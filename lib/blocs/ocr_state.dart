part of 'ocr_bloc.dart';

@freezed
class OCRStateData with _$OCRStateData {
  const factory OCRStateData(
      {@Default(BillType.S3FNB) BillType billType,
      File? image,
      Size? imageSize,
      String? ocrTextResult,
      @Default([]) List<TextLine> ocrTextLines}) = _OCRStateData;
}

@freezed
class OCRState with _$OCRState {
  const factory OCRState.initial({@Default(OCRStateData()) OCRStateData data}) =
      _OCRInitialState;

  const factory OCRState.loading({required OCRStateData data}) =
      _OCRLoadingState;

  const factory OCRState.loaded({required OCRStateData data}) = _OCRLoadedState;
}