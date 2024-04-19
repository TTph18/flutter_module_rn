part of 'ocr_bloc.dart';

@immutable
abstract class OCREvent extends Equatable {
  const OCREvent();
}

class ChangeBillTypeEvent extends OCREvent {
  final BillType type;

  const ChangeBillTypeEvent({required this.type});

  @override
  List<Object?> get props => [type];
}

class ProcessImageEvent extends OCREvent {
  final String path;

  const ProcessImageEvent({required this.path});

  @override
  List<Object?> get props => [path];
}
