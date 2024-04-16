part of 'ocr_bloc.dart';

@immutable
abstract class OCREvent extends Equatable {
  const OCREvent();
}

class ProcessImageEvent extends OCREvent {
  final String path;

  const ProcessImageEvent({required this.path});

  @override
  List<Object?> get props => [path];
}
