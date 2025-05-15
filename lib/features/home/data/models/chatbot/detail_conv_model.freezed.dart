// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_conv_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HistoryConvModel _$HistoryConvModelFromJson(Map<String, dynamic> json) {
  return _HistoryConvModel.fromJson(json);
}

/// @nodoc
mixin _$HistoryConvModel {
  List<DetailConvModel>? get data => throw _privateConstructorUsedError;

  /// Serializes this HistoryConvModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryConvModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryConvModelCopyWith<HistoryConvModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryConvModelCopyWith<$Res> {
  factory $HistoryConvModelCopyWith(
    HistoryConvModel value,
    $Res Function(HistoryConvModel) then,
  ) = _$HistoryConvModelCopyWithImpl<$Res, HistoryConvModel>;
  @useResult
  $Res call({List<DetailConvModel>? data});
}

/// @nodoc
class _$HistoryConvModelCopyWithImpl<$Res, $Val extends HistoryConvModel>
    implements $HistoryConvModelCopyWith<$Res> {
  _$HistoryConvModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryConvModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = freezed}) {
    return _then(
      _value.copyWith(
            data:
                freezed == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as List<DetailConvModel>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HistoryConvModelImplCopyWith<$Res>
    implements $HistoryConvModelCopyWith<$Res> {
  factory _$$HistoryConvModelImplCopyWith(
    _$HistoryConvModelImpl value,
    $Res Function(_$HistoryConvModelImpl) then,
  ) = __$$HistoryConvModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DetailConvModel>? data});
}

/// @nodoc
class __$$HistoryConvModelImplCopyWithImpl<$Res>
    extends _$HistoryConvModelCopyWithImpl<$Res, _$HistoryConvModelImpl>
    implements _$$HistoryConvModelImplCopyWith<$Res> {
  __$$HistoryConvModelImplCopyWithImpl(
    _$HistoryConvModelImpl _value,
    $Res Function(_$HistoryConvModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HistoryConvModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = freezed}) {
    return _then(
      _$HistoryConvModelImpl(
        data:
            freezed == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<DetailConvModel>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryConvModelImpl implements _HistoryConvModel {
  const _$HistoryConvModelImpl({final List<DetailConvModel>? data})
    : _data = data;

  factory _$HistoryConvModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryConvModelImplFromJson(json);

  final List<DetailConvModel>? _data;
  @override
  List<DetailConvModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HistoryConvModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryConvModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of HistoryConvModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryConvModelImplCopyWith<_$HistoryConvModelImpl> get copyWith =>
      __$$HistoryConvModelImplCopyWithImpl<_$HistoryConvModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryConvModelImplToJson(this);
  }
}

abstract class _HistoryConvModel implements HistoryConvModel {
  const factory _HistoryConvModel({final List<DetailConvModel>? data}) =
      _$HistoryConvModelImpl;

  factory _HistoryConvModel.fromJson(Map<String, dynamic> json) =
      _$HistoryConvModelImpl.fromJson;

  @override
  List<DetailConvModel>? get data;

  /// Create a copy of HistoryConvModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryConvModelImplCopyWith<_$HistoryConvModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailConvModel _$DetailConvModelFromJson(Map<String, dynamic> json) {
  return _DetailConvModel.fromJson(json);
}

/// @nodoc
mixin _$DetailConvModel {
  String? get human => throw _privateConstructorUsedError;
  String? get ai => throw _privateConstructorUsedError;

  /// Serializes this DetailConvModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailConvModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailConvModelCopyWith<DetailConvModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailConvModelCopyWith<$Res> {
  factory $DetailConvModelCopyWith(
    DetailConvModel value,
    $Res Function(DetailConvModel) then,
  ) = _$DetailConvModelCopyWithImpl<$Res, DetailConvModel>;
  @useResult
  $Res call({String? human, String? ai});
}

/// @nodoc
class _$DetailConvModelCopyWithImpl<$Res, $Val extends DetailConvModel>
    implements $DetailConvModelCopyWith<$Res> {
  _$DetailConvModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailConvModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? human = freezed, Object? ai = freezed}) {
    return _then(
      _value.copyWith(
            human:
                freezed == human
                    ? _value.human
                    : human // ignore: cast_nullable_to_non_nullable
                        as String?,
            ai:
                freezed == ai
                    ? _value.ai
                    : ai // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DetailConvModelImplCopyWith<$Res>
    implements $DetailConvModelCopyWith<$Res> {
  factory _$$DetailConvModelImplCopyWith(
    _$DetailConvModelImpl value,
    $Res Function(_$DetailConvModelImpl) then,
  ) = __$$DetailConvModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? human, String? ai});
}

/// @nodoc
class __$$DetailConvModelImplCopyWithImpl<$Res>
    extends _$DetailConvModelCopyWithImpl<$Res, _$DetailConvModelImpl>
    implements _$$DetailConvModelImplCopyWith<$Res> {
  __$$DetailConvModelImplCopyWithImpl(
    _$DetailConvModelImpl _value,
    $Res Function(_$DetailConvModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DetailConvModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? human = freezed, Object? ai = freezed}) {
    return _then(
      _$DetailConvModelImpl(
        human:
            freezed == human
                ? _value.human
                : human // ignore: cast_nullable_to_non_nullable
                    as String?,
        ai:
            freezed == ai
                ? _value.ai
                : ai // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailConvModelImpl implements _DetailConvModel {
  const _$DetailConvModelImpl({this.human, this.ai});

  factory _$DetailConvModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailConvModelImplFromJson(json);

  @override
  final String? human;
  @override
  final String? ai;

  @override
  String toString() {
    return 'DetailConvModel(human: $human, ai: $ai)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailConvModelImpl &&
            (identical(other.human, human) || other.human == human) &&
            (identical(other.ai, ai) || other.ai == ai));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, human, ai);

  /// Create a copy of DetailConvModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailConvModelImplCopyWith<_$DetailConvModelImpl> get copyWith =>
      __$$DetailConvModelImplCopyWithImpl<_$DetailConvModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailConvModelImplToJson(this);
  }
}

abstract class _DetailConvModel implements DetailConvModel {
  const factory _DetailConvModel({final String? human, final String? ai}) =
      _$DetailConvModelImpl;

  factory _DetailConvModel.fromJson(Map<String, dynamic> json) =
      _$DetailConvModelImpl.fromJson;

  @override
  String? get human;
  @override
  String? get ai;

  /// Create a copy of DetailConvModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailConvModelImplCopyWith<_$DetailConvModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
