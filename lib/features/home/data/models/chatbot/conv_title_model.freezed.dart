// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conv_title_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ConvTitleModel _$ConvTitleModelFromJson(Map<String, dynamic> json) {
  return _ConvTitleModel.fromJson(json);
}

/// @nodoc
mixin _$ConvTitleModel {
  List<ConvSessionData>? get data => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ConvTitleModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConvTitleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConvTitleModelCopyWith<ConvTitleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvTitleModelCopyWith<$Res> {
  factory $ConvTitleModelCopyWith(
    ConvTitleModel value,
    $Res Function(ConvTitleModel) then,
  ) = _$ConvTitleModelCopyWithImpl<$Res, ConvTitleModel>;
  @useResult
  $Res call({List<ConvSessionData>? data, int? statusCode, String? message});
}

/// @nodoc
class _$ConvTitleModelCopyWithImpl<$Res, $Val extends ConvTitleModel>
    implements $ConvTitleModelCopyWith<$Res> {
  _$ConvTitleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConvTitleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            data:
                freezed == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as List<ConvSessionData>?,
            statusCode:
                freezed == statusCode
                    ? _value.statusCode
                    : statusCode // ignore: cast_nullable_to_non_nullable
                        as int?,
            message:
                freezed == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ConvTitleModelImplCopyWith<$Res>
    implements $ConvTitleModelCopyWith<$Res> {
  factory _$$ConvTitleModelImplCopyWith(
    _$ConvTitleModelImpl value,
    $Res Function(_$ConvTitleModelImpl) then,
  ) = __$$ConvTitleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ConvSessionData>? data, int? statusCode, String? message});
}

/// @nodoc
class __$$ConvTitleModelImplCopyWithImpl<$Res>
    extends _$ConvTitleModelCopyWithImpl<$Res, _$ConvTitleModelImpl>
    implements _$$ConvTitleModelImplCopyWith<$Res> {
  __$$ConvTitleModelImplCopyWithImpl(
    _$ConvTitleModelImpl _value,
    $Res Function(_$ConvTitleModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConvTitleModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _$ConvTitleModelImpl(
        data:
            freezed == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<ConvSessionData>?,
        statusCode:
            freezed == statusCode
                ? _value.statusCode
                : statusCode // ignore: cast_nullable_to_non_nullable
                    as int?,
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ConvTitleModelImpl implements _ConvTitleModel {
  const _$ConvTitleModelImpl({
    final List<ConvSessionData>? data,
    this.statusCode,
    this.message,
  }) : _data = data;

  factory _$ConvTitleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConvTitleModelImplFromJson(json);

  final List<ConvSessionData>? _data;
  @override
  List<ConvSessionData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'ConvTitleModel(data: $data, statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvTitleModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_data),
    statusCode,
    message,
  );

  /// Create a copy of ConvTitleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConvTitleModelImplCopyWith<_$ConvTitleModelImpl> get copyWith =>
      __$$ConvTitleModelImplCopyWithImpl<_$ConvTitleModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ConvTitleModelImplToJson(this);
  }
}

abstract class _ConvTitleModel implements ConvTitleModel {
  const factory _ConvTitleModel({
    final List<ConvSessionData>? data,
    final int? statusCode,
    final String? message,
  }) = _$ConvTitleModelImpl;

  factory _ConvTitleModel.fromJson(Map<String, dynamic> json) =
      _$ConvTitleModelImpl.fromJson;

  @override
  List<ConvSessionData>? get data;
  @override
  int? get statusCode;
  @override
  String? get message;

  /// Create a copy of ConvTitleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConvTitleModelImplCopyWith<_$ConvTitleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConvSessionData _$ConvSessionDataFromJson(Map<String, dynamic> json) {
  return _ConvSessionData.fromJson(json);
}

/// @nodoc
mixin _$ConvSessionData {
  @JsonKey(name: 'session_id')
  String? get sessionId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this ConvSessionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConvSessionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConvSessionDataCopyWith<ConvSessionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvSessionDataCopyWith<$Res> {
  factory $ConvSessionDataCopyWith(
    ConvSessionData value,
    $Res Function(ConvSessionData) then,
  ) = _$ConvSessionDataCopyWithImpl<$Res, ConvSessionData>;
  @useResult
  $Res call({@JsonKey(name: 'session_id') String? sessionId, String? title});
}

/// @nodoc
class _$ConvSessionDataCopyWithImpl<$Res, $Val extends ConvSessionData>
    implements $ConvSessionDataCopyWith<$Res> {
  _$ConvSessionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConvSessionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sessionId = freezed, Object? title = freezed}) {
    return _then(
      _value.copyWith(
            sessionId:
                freezed == sessionId
                    ? _value.sessionId
                    : sessionId // ignore: cast_nullable_to_non_nullable
                        as String?,
            title:
                freezed == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ConvSessionDataImplCopyWith<$Res>
    implements $ConvSessionDataCopyWith<$Res> {
  factory _$$ConvSessionDataImplCopyWith(
    _$ConvSessionDataImpl value,
    $Res Function(_$ConvSessionDataImpl) then,
  ) = __$$ConvSessionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'session_id') String? sessionId, String? title});
}

/// @nodoc
class __$$ConvSessionDataImplCopyWithImpl<$Res>
    extends _$ConvSessionDataCopyWithImpl<$Res, _$ConvSessionDataImpl>
    implements _$$ConvSessionDataImplCopyWith<$Res> {
  __$$ConvSessionDataImplCopyWithImpl(
    _$ConvSessionDataImpl _value,
    $Res Function(_$ConvSessionDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConvSessionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sessionId = freezed, Object? title = freezed}) {
    return _then(
      _$ConvSessionDataImpl(
        sessionId:
            freezed == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                    as String?,
        title:
            freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ConvSessionDataImpl implements _ConvSessionData {
  const _$ConvSessionDataImpl({
    @JsonKey(name: 'session_id') this.sessionId,
    this.title,
  });

  factory _$ConvSessionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConvSessionDataImplFromJson(json);

  @override
  @JsonKey(name: 'session_id')
  final String? sessionId;
  @override
  final String? title;

  @override
  String toString() {
    return 'ConvSessionData(sessionId: $sessionId, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvSessionDataImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sessionId, title);

  /// Create a copy of ConvSessionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConvSessionDataImplCopyWith<_$ConvSessionDataImpl> get copyWith =>
      __$$ConvSessionDataImplCopyWithImpl<_$ConvSessionDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ConvSessionDataImplToJson(this);
  }
}

abstract class _ConvSessionData implements ConvSessionData {
  const factory _ConvSessionData({
    @JsonKey(name: 'session_id') final String? sessionId,
    final String? title,
  }) = _$ConvSessionDataImpl;

  factory _ConvSessionData.fromJson(Map<String, dynamic> json) =
      _$ConvSessionDataImpl.fromJson;

  @override
  @JsonKey(name: 'session_id')
  String? get sessionId;
  @override
  String? get title;

  /// Create a copy of ConvSessionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConvSessionDataImplCopyWith<_$ConvSessionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
