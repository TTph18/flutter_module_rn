import 'dart:async';
import 'dart:io';

import 'package:flutter_module_rn/utils/image_utils.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

import '../utils/text_processing_utils.dart';

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
    await ImageUtils.getImageSize(Image.file(File(event.path)));

    String recognizedString = '';

    List<TextLine> textLines = [];

    List<TextLine> possibleProduct = [];

    List<TextLine> possibleTop = [];

    List<TextLine> possibleBottom = [];

    ///TODO: Seperate logic
    for (TextBlock block in recognizedText.blocks) {
      for (TextLine line in block.lines) {
        if (OCRResultFilterUtils.isInList(line.text, s3fnbBillTop)) {
          possibleTop.add(line);
          continue;
        } else if (OCRResultFilterUtils.isInList(line.text, s3fnbBillBottom)) {
          possibleBottom.add(line);
          continue;
        }

        textLines.add(line);
      }
    }

    print(possibleBottom.map((e) => e.text));
    print(possibleTop.map((e) => e.text));

    double? maxTop = OCRResultFilterUtils.getMaxCoordinate(possibleTop);
    double? maxBottom = OCRResultFilterUtils.getMaxCoordinate(possibleBottom);
    double? rightBoundary =
    OCRResultFilterUtils.findAndGetRightCoordinate(s3fnbBillTop[1], possibleTop);

    print(maxTop);
    print(maxBottom);

    ///TODO: Seperate logic and refactor
    if (maxTop == null && maxBottom == null) {
      possibleProduct.addAll(textLines);
    } else if (maxTop != null && maxBottom == null) {
      possibleProduct.addAll(textLines.where((element) =>
      element.boundingBox.top > maxTop &&
          (rightBoundary != null
              ? element.boundingBox.right < rightBoundary
              : true)));
    } else if (maxTop == null && maxBottom != null) {
      possibleProduct.addAll(textLines.where((element) =>
      element.boundingBox.bottom < maxBottom &&
          (rightBoundary != null
              ? element.boundingBox.right < rightBoundary
              : true)));
    } else if (maxTop != null && maxBottom != null) {
      possibleProduct.addAll(textLines.where((element) =>
      element.boundingBox.top > maxTop &&
          element.boundingBox.bottom < maxBottom &&
          (rightBoundary != null
              ? element.boundingBox.right < rightBoundary
              : true)));
    }

    emit(_OCRLoadedState(
        data: state.data.copyWith(
            image: File(event.path),
            imageSize: imageSize,
            ocrTextLines: possibleProduct,
            ocrTextResult: recognizedString)));
  }
}
