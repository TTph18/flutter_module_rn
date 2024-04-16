import 'dart:async';
import 'dart:io';

import 'package:flutter_module_rn/utils/image_utils.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

part 'ocr_bloc.freezed.dart';

part 'ocr_event.dart';

part 'ocr_state.dart';

class OCRBloc extends Bloc<OCREvent, OCRState> {
  final TextRecognizer textRecognizer;

  OCRBloc({required this.textRecognizer}) : super(const _OCRInitialState()) {
    on<ProcessImageEvent>(_processImage);
  }

  Future<void> _processImage(
      ProcessImageEvent event, Emitter<OCRState> emit) async {
    emit(const _OCRLoadingState(data: OCRStateData()));

    final inputImage = InputImage.fromFilePath(event.path);
    final recognizedText = await textRecognizer.processImage(inputImage);

    Size imageSize =
        await ImageUtils().getImageSize(Image.file(File(event.path)));

    String recognizedString = '';
    List<TextLine> textLines = [];

    for (TextBlock block in recognizedText.blocks) {
      for (TextLine line in block.lines) {
        textLines.add(line);
        recognizedString += '${line.text} ${line.boundingBox}\n\n';
      }
    }

    emit(_OCRLoadedState(
        data: state.data.copyWith(
            image: File(event.path),
            imageSize: imageSize,
            ocrTextLines: textLines,
            ocrTextResult: recognizedString)));
  }
}