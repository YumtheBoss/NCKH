// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_conv_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DetailConvState {
  List<DetailConvModel> get data => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of DetailConvState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailConvStateCopyWith<DetailConvState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailConvStateCopyWith<$Res> {
  factory $DetailConvStateCopyWith(
    DetailConvState value,
    $Res Function(DetailConvState) then,
  ) = _$DetailConvStateCopyWithImpl<$Res, DetailConvState>;
  @useResult
  $Res call({List<DetailConvModel> data, bool isLoading});
}

/// @nodoc
class _$DetailConvStateCopyWithImpl<$Res, $Val extends DetailConvState>
    implements $DetailConvStateCopyWith<$Res> {
  _$DetailConvStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailConvState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null, Object? isLoading = null}) {
    return _then(
      _value.copyWith(
            data:
                null == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as List<DetailConvModel>,
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DetailConvStateImplCopyWith<$Res>
    implements $DetailConvStateCopyWith<$Res> {
  factory _$$DetailConvStateImplCopyWith(
    _$DetailConvStateImpl value,
    $Res Function(_$DetailConvStateImpl) then,
  ) = __$$DetailConvStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DetailConvModel> data, bool isLoading});
}

/// @nodoc
class __$$DetailConvStateImplCopyWithImpl<$Res>
    extends _$DetailConvStateCopyWithImpl<$Res, _$DetailConvStateImpl>
    implements _$$DetailConvStateImplCopyWith<$Res> {
  __$$DetailConvStateImplCopyWithImpl(
    _$DetailConvStateImpl _value,
    $Res Function(_$DetailConvStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DetailConvState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null, Object? isLoading = null}) {
    return _then(
      _$DetailConvStateImpl(
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<DetailConvModel>,
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$DetailConvStateImpl implements _DetailConvState {
  _$DetailConvStateImpl({
    final List<DetailConvModel> data = const [],
    this.isLoading = false,
  }) : _data = data;

  final List<DetailConvModel> _data;
  @override
  @JsonKey()
  List<DetailConvModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'DetailConvState(data: $data, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailConvStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_data),
    isLoading,
  );

  /// Create a copy of DetailConvState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailConvStateImplCopyWith<_$DetailConvStateImpl> get copyWith =>
      __$$DetailConvStateImplCopyWithImpl<_$DetailConvStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DetailConvState implements DetailConvState {
  factory _DetailConvState({
    final List<DetailConvModel> data,
    final bool isLoading,
  }) = _$DetailConvStateImpl;

  @override
  List<DetailConvModel> get data;
  @override
  bool get isLoading;

  /// Create a copy of DetailConvState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailConvStateImplCopyWith<_$DetailConvStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
