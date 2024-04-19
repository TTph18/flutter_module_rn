// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ocr_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OCRStateData {
  BillType get billType => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;
  Size? get imageSize => throw _privateConstructorUsedError;
  String? get ocrTextResult => throw _privateConstructorUsedError;
  List<TextLine> get ocrTextLines => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OCRStateDataCopyWith<OCRStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OCRStateDataCopyWith<$Res> {
  factory $OCRStateDataCopyWith(
          OCRStateData value, $Res Function(OCRStateData) then) =
      _$OCRStateDataCopyWithImpl<$Res, OCRStateData>;
  @useResult
  $Res call(
      {BillType billType,
      File? image,
      Size? imageSize,
      String? ocrTextResult,
      List<TextLine> ocrTextLines});
}

/// @nodoc
class _$OCRStateDataCopyWithImpl<$Res, $Val extends OCRStateData>
    implements $OCRStateDataCopyWith<$Res> {
  _$OCRStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billType = null,
    Object? image = freezed,
    Object? imageSize = freezed,
    Object? ocrTextResult = freezed,
    Object? ocrTextLines = null,
  }) {
    return _then(_value.copyWith(
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as BillType,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      imageSize: freezed == imageSize
          ? _value.imageSize
          : imageSize // ignore: cast_nullable_to_non_nullable
              as Size?,
      ocrTextResult: freezed == ocrTextResult
          ? _value.ocrTextResult
          : ocrTextResult // ignore: cast_nullable_to_non_nullable
              as String?,
      ocrTextLines: null == ocrTextLines
          ? _value.ocrTextLines
          : ocrTextLines // ignore: cast_nullable_to_non_nullable
              as List<TextLine>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OCRStateDataImplCopyWith<$Res>
    implements $OCRStateDataCopyWith<$Res> {
  factory _$$OCRStateDataImplCopyWith(
          _$OCRStateDataImpl value, $Res Function(_$OCRStateDataImpl) then) =
      __$$OCRStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BillType billType,
      File? image,
      Size? imageSize,
      String? ocrTextResult,
      List<TextLine> ocrTextLines});
}

/// @nodoc
class __$$OCRStateDataImplCopyWithImpl<$Res>
    extends _$OCRStateDataCopyWithImpl<$Res, _$OCRStateDataImpl>
    implements _$$OCRStateDataImplCopyWith<$Res> {
  __$$OCRStateDataImplCopyWithImpl(
      _$OCRStateDataImpl _value, $Res Function(_$OCRStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billType = null,
    Object? image = freezed,
    Object? imageSize = freezed,
    Object? ocrTextResult = freezed,
    Object? ocrTextLines = null,
  }) {
    return _then(_$OCRStateDataImpl(
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as BillType,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      imageSize: freezed == imageSize
          ? _value.imageSize
          : imageSize // ignore: cast_nullable_to_non_nullable
              as Size?,
      ocrTextResult: freezed == ocrTextResult
          ? _value.ocrTextResult
          : ocrTextResult // ignore: cast_nullable_to_non_nullable
              as String?,
      ocrTextLines: null == ocrTextLines
          ? _value._ocrTextLines
          : ocrTextLines // ignore: cast_nullable_to_non_nullable
              as List<TextLine>,
    ));
  }
}

/// @nodoc

class _$OCRStateDataImpl implements _OCRStateData {
  const _$OCRStateDataImpl(
      {this.billType = BillType.S3FNB,
      this.image,
      this.imageSize,
      this.ocrTextResult,
      final List<TextLine> ocrTextLines = const []})
      : _ocrTextLines = ocrTextLines;

  @override
  @JsonKey()
  final BillType billType;
  @override
  final File? image;
  @override
  final Size? imageSize;
  @override
  final String? ocrTextResult;
  final List<TextLine> _ocrTextLines;
  @override
  @JsonKey()
  List<TextLine> get ocrTextLines {
    if (_ocrTextLines is EqualUnmodifiableListView) return _ocrTextLines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ocrTextLines);
  }

  @override
  String toString() {
    return 'OCRStateData(billType: $billType, image: $image, imageSize: $imageSize, ocrTextResult: $ocrTextResult, ocrTextLines: $ocrTextLines)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OCRStateDataImpl &&
            (identical(other.billType, billType) ||
                other.billType == billType) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageSize, imageSize) ||
                other.imageSize == imageSize) &&
            (identical(other.ocrTextResult, ocrTextResult) ||
                other.ocrTextResult == ocrTextResult) &&
            const DeepCollectionEquality()
                .equals(other._ocrTextLines, _ocrTextLines));
  }

  @override
  int get hashCode => Object.hash(runtimeType, billType, image, imageSize,
      ocrTextResult, const DeepCollectionEquality().hash(_ocrTextLines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OCRStateDataImplCopyWith<_$OCRStateDataImpl> get copyWith =>
      __$$OCRStateDataImplCopyWithImpl<_$OCRStateDataImpl>(this, _$identity);
}

abstract class _OCRStateData implements OCRStateData {
  const factory _OCRStateData(
      {final BillType billType,
      final File? image,
      final Size? imageSize,
      final String? ocrTextResult,
      final List<TextLine> ocrTextLines}) = _$OCRStateDataImpl;

  @override
  BillType get billType;
  @override
  File? get image;
  @override
  Size? get imageSize;
  @override
  String? get ocrTextResult;
  @override
  List<TextLine> get ocrTextLines;
  @override
  @JsonKey(ignore: true)
  _$$OCRStateDataImplCopyWith<_$OCRStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OCRState {
  OCRStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OCRStateData data) initial,
    required TResult Function(OCRStateData data) loading,
    required TResult Function(OCRStateData data) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OCRStateData data)? initial,
    TResult? Function(OCRStateData data)? loading,
    TResult? Function(OCRStateData data)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OCRStateData data)? initial,
    TResult Function(OCRStateData data)? loading,
    TResult Function(OCRStateData data)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OCRInitialState value) initial,
    required TResult Function(_OCRLoadingState value) loading,
    required TResult Function(_OCRLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OCRInitialState value)? initial,
    TResult? Function(_OCRLoadingState value)? loading,
    TResult? Function(_OCRLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OCRInitialState value)? initial,
    TResult Function(_OCRLoadingState value)? loading,
    TResult Function(_OCRLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OCRStateCopyWith<OCRState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OCRStateCopyWith<$Res> {
  factory $OCRStateCopyWith(OCRState value, $Res Function(OCRState) then) =
      _$OCRStateCopyWithImpl<$Res, OCRState>;
  @useResult
  $Res call({OCRStateData data});

  $OCRStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$OCRStateCopyWithImpl<$Res, $Val extends OCRState>
    implements $OCRStateCopyWith<$Res> {
  _$OCRStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OCRStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OCRStateDataCopyWith<$Res> get data {
    return $OCRStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OCRInitialStateImplCopyWith<$Res>
    implements $OCRStateCopyWith<$Res> {
  factory _$$OCRInitialStateImplCopyWith(_$OCRInitialStateImpl value,
          $Res Function(_$OCRInitialStateImpl) then) =
      __$$OCRInitialStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OCRStateData data});

  @override
  $OCRStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$OCRInitialStateImplCopyWithImpl<$Res>
    extends _$OCRStateCopyWithImpl<$Res, _$OCRInitialStateImpl>
    implements _$$OCRInitialStateImplCopyWith<$Res> {
  __$$OCRInitialStateImplCopyWithImpl(
      _$OCRInitialStateImpl _value, $Res Function(_$OCRInitialStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$OCRInitialStateImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OCRStateData,
    ));
  }
}

/// @nodoc

class _$OCRInitialStateImpl implements _OCRInitialState {
  const _$OCRInitialStateImpl({this.data = const OCRStateData()});

  @override
  @JsonKey()
  final OCRStateData data;

  @override
  String toString() {
    return 'OCRState.initial(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OCRInitialStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OCRInitialStateImplCopyWith<_$OCRInitialStateImpl> get copyWith =>
      __$$OCRInitialStateImplCopyWithImpl<_$OCRInitialStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OCRStateData data) initial,
    required TResult Function(OCRStateData data) loading,
    required TResult Function(OCRStateData data) loaded,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OCRStateData data)? initial,
    TResult? Function(OCRStateData data)? loading,
    TResult? Function(OCRStateData data)? loaded,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OCRStateData data)? initial,
    TResult Function(OCRStateData data)? loading,
    TResult Function(OCRStateData data)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OCRInitialState value) initial,
    required TResult Function(_OCRLoadingState value) loading,
    required TResult Function(_OCRLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OCRInitialState value)? initial,
    TResult? Function(_OCRLoadingState value)? loading,
    TResult? Function(_OCRLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OCRInitialState value)? initial,
    TResult Function(_OCRLoadingState value)? loading,
    TResult Function(_OCRLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _OCRInitialState implements OCRState {
  const factory _OCRInitialState({final OCRStateData data}) =
      _$OCRInitialStateImpl;

  @override
  OCRStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$OCRInitialStateImplCopyWith<_$OCRInitialStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OCRLoadingStateImplCopyWith<$Res>
    implements $OCRStateCopyWith<$Res> {
  factory _$$OCRLoadingStateImplCopyWith(_$OCRLoadingStateImpl value,
          $Res Function(_$OCRLoadingStateImpl) then) =
      __$$OCRLoadingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OCRStateData data});

  @override
  $OCRStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$OCRLoadingStateImplCopyWithImpl<$Res>
    extends _$OCRStateCopyWithImpl<$Res, _$OCRLoadingStateImpl>
    implements _$$OCRLoadingStateImplCopyWith<$Res> {
  __$$OCRLoadingStateImplCopyWithImpl(
      _$OCRLoadingStateImpl _value, $Res Function(_$OCRLoadingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$OCRLoadingStateImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OCRStateData,
    ));
  }
}

/// @nodoc

class _$OCRLoadingStateImpl implements _OCRLoadingState {
  const _$OCRLoadingStateImpl({required this.data});

  @override
  final OCRStateData data;

  @override
  String toString() {
    return 'OCRState.loading(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OCRLoadingStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OCRLoadingStateImplCopyWith<_$OCRLoadingStateImpl> get copyWith =>
      __$$OCRLoadingStateImplCopyWithImpl<_$OCRLoadingStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OCRStateData data) initial,
    required TResult Function(OCRStateData data) loading,
    required TResult Function(OCRStateData data) loaded,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OCRStateData data)? initial,
    TResult? Function(OCRStateData data)? loading,
    TResult? Function(OCRStateData data)? loaded,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OCRStateData data)? initial,
    TResult Function(OCRStateData data)? loading,
    TResult Function(OCRStateData data)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OCRInitialState value) initial,
    required TResult Function(_OCRLoadingState value) loading,
    required TResult Function(_OCRLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OCRInitialState value)? initial,
    TResult? Function(_OCRLoadingState value)? loading,
    TResult? Function(_OCRLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OCRInitialState value)? initial,
    TResult Function(_OCRLoadingState value)? loading,
    TResult Function(_OCRLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _OCRLoadingState implements OCRState {
  const factory _OCRLoadingState({required final OCRStateData data}) =
      _$OCRLoadingStateImpl;

  @override
  OCRStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$OCRLoadingStateImplCopyWith<_$OCRLoadingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OCRLoadedStateImplCopyWith<$Res>
    implements $OCRStateCopyWith<$Res> {
  factory _$$OCRLoadedStateImplCopyWith(_$OCRLoadedStateImpl value,
          $Res Function(_$OCRLoadedStateImpl) then) =
      __$$OCRLoadedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OCRStateData data});

  @override
  $OCRStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$OCRLoadedStateImplCopyWithImpl<$Res>
    extends _$OCRStateCopyWithImpl<$Res, _$OCRLoadedStateImpl>
    implements _$$OCRLoadedStateImplCopyWith<$Res> {
  __$$OCRLoadedStateImplCopyWithImpl(
      _$OCRLoadedStateImpl _value, $Res Function(_$OCRLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$OCRLoadedStateImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OCRStateData,
    ));
  }
}

/// @nodoc

class _$OCRLoadedStateImpl implements _OCRLoadedState {
  const _$OCRLoadedStateImpl({required this.data});

  @override
  final OCRStateData data;

  @override
  String toString() {
    return 'OCRState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OCRLoadedStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OCRLoadedStateImplCopyWith<_$OCRLoadedStateImpl> get copyWith =>
      __$$OCRLoadedStateImplCopyWithImpl<_$OCRLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OCRStateData data) initial,
    required TResult Function(OCRStateData data) loading,
    required TResult Function(OCRStateData data) loaded,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OCRStateData data)? initial,
    TResult? Function(OCRStateData data)? loading,
    TResult? Function(OCRStateData data)? loaded,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OCRStateData data)? initial,
    TResult Function(OCRStateData data)? loading,
    TResult Function(OCRStateData data)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OCRInitialState value) initial,
    required TResult Function(_OCRLoadingState value) loading,
    required TResult Function(_OCRLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OCRInitialState value)? initial,
    TResult? Function(_OCRLoadingState value)? loading,
    TResult? Function(_OCRLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OCRInitialState value)? initial,
    TResult Function(_OCRLoadingState value)? loading,
    TResult Function(_OCRLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _OCRLoadedState implements OCRState {
  const factory _OCRLoadedState({required final OCRStateData data}) =
      _$OCRLoadedStateImpl;

  @override
  OCRStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$OCRLoadedStateImplCopyWith<_$OCRLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
