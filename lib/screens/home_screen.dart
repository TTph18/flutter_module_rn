import 'dart:async';

import 'package:flutter_module_rn/blocs/ocr_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: BlocBuilder<OCRBloc, OCRState>(builder: (context, state) {
          return ListView(
            shrinkWrap: true,
            children: [
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
              state.maybeMap(
                  orElse: () => state.data.image != null
                      ? Container(
                          width: double.maxFinite,
                          color: Colors.black,
                          child: CustomPaint(
                            foregroundPainter: TextDetectorPainter(
                              state.data.imageSize!,
                              state.data.ocrTextLines,
                            ),
                            child: AspectRatio(
                              aspectRatio: state.data.imageSize!.aspectRatio,
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
                  loading: (_) => const SizedBox(
                      height: 200,
                      child: Center(child: CircularProgressIndicator()))),
              if (state.data.image != null)
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(state.data.ocrTextResult ?? ''),
                ),
            ],
          );
        }));
  }

  Future<void> _getImage(ImageSource source) async {
    final pickedFile = await _imagePicker?.pickImage(source: source);
    if (pickedFile != null) {
      if (mounted) {
        context.read<OCRBloc>().add(ProcessImageEvent(path: pickedFile.path));
      }
    }
  }
}
