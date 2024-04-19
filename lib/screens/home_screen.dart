import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_module_rn/blocs/ocr_bloc.dart';
import 'package:flutter_module_rn/utils/text_processing_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exif_rotation/flutter_exif_rotation.dart';
import 'package:image_picker/image_picker.dart';

import '../widgets/text_detector_painter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ImagePicker? _imagePicker;
  String bearToken = '';

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
    _getPassedArguments();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _getPassedArguments() async {
    Map intent = await const MethodChannel('flutter_activity')
        .invokeMethod('getArguments') as Map<String, dynamic>;

    bearToken = intent['bearToken'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: const TextStyle(color: Colors.white),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white,),
            onPressed: () {
              SystemNavigator.pop();
            },
          ),
        ),
        body: BlocBuilder<OCRBloc, OCRState>(builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Text(bearToken),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: BillType.values
                          .map((e) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: IgnorePointer(
                                  ignoring: state.data.billType == e,
                                  child: ElevatedButton(
                                    style: state.data.billType == e
                                        ? TextButton.styleFrom(
                                            backgroundColor: Colors.blue,
                                            foregroundColor: Colors.white)
                                        : null,
                                    onPressed: () {
                                      context
                                          .read<OCRBloc>()
                                          .add(ChangeBillTypeEvent(type: e));
                                    },
                                    child: Text(e.name),
                                  ),
                                ),
                              ))
                          .toList()),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ElevatedButton(
                          child: const Text('From Gallery'),
                          onPressed: () => _getImage(ImageSource.gallery),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ElevatedButton(
                          child: const Text('Take a picture'),
                          onPressed: () => _getImage(ImageSource.camera),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: state.maybeMap(
                      orElse: () => state.data.image != null
                          ? Container(
                              height: MediaQuery.of(context).size.height * 0.5,
                              color: Colors.black,
                              child: CustomPaint(
                                foregroundPainter: TextDetectorPainter(
                                  state.data.imageSize!,
                                  state.data.ocrTextLines,
                                ),
                                child: AspectRatio(
                                  aspectRatio:
                                      state.data.imageSize!.aspectRatio,
                                  child: Image.file(
                                    state.data.image!,
                                  ),
                                ),
                              ),
                            )
                          : const Icon(
                              Icons.image,
                              size: 200,
                            ),
                      loading: (_) => const CircularProgressIndicator()),
                ),
                if (state.data.image != null)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(state.data.ocrTextLines
                            .map((e) =>
                                OCRResultFilterUtils.filterParenthesesText(
                                    e.text))
                            .where((element) => element.isNotEmpty)
                            .join(', ') ??
                        ''),
                  ),
              ],
            ),
          );
        }));
  }

  Future<void> _getImage(ImageSource source) async {
    final pickedFile = await _imagePicker?.pickImage(source: source);

    if (pickedFile != null) {
      final fixedImage =
          await FlutterExifRotation.rotateAndSaveImage(path: pickedFile.path);

      if (mounted) {
        context.read<OCRBloc>().add(ProcessImageEvent(path: fixedImage.path));
      }
    }
  }
}
