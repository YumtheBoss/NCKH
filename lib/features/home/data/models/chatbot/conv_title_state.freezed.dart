// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conv_title_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ConvTitleState {
  List<ConvSessionData> get data => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of ConvTitleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConvTitleStateCopyWith<ConvTitleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvTitleStateCopyWith<$Res> {
  factory $ConvTitleStateCopyWith(
    ConvTitleState value,
    $Res Function(ConvTitleState) then,
  ) = _$ConvTitleStateCopyWithImpl<$Res, ConvTitleState>;
  @useResult
  $Res call({List<ConvSessionData> data, bool isLoading});
}

/// @nodoc
class _$ConvTitleStateCopyWithImpl<$Res, $Val extends ConvTitleState>
    implements $ConvTitleStateCopyWith<$Res> {
  _$ConvTitleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConvTitleState
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
                        as List<ConvSessionData>,
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
abstract class _$$ConvTitleStateImplCopyWith<$Res>
    implements $ConvTitleStateCopyWith<$Res> {
  factory _$$ConvTitleStateImplCopyWith(
    _$ConvTitleStateImpl value,
    $Res Function(_$ConvTitleStateImpl) then,
  ) = __$$ConvTitleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ConvSessionData> data, bool isLoading});
}

/// @nodoc
class __$$ConvTitleStateImplCopyWithImpl<$Res>
    extends _$ConvTitleStateCopyWithImpl<$Res, _$ConvTitleStateImpl>
    implements _$$ConvTitleStateImplCopyWith<$Res> {
  __$$ConvTitleStateImplCopyWithImpl(
    _$ConvTitleStateImpl _value,
    $Res Function(_$ConvTitleStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConvTitleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null, Object? isLoading = null}) {
    return _then(
      _$ConvTitleStateImpl(
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<ConvSessionData>,
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

class _$ConvTitleStateImpl implements _ConvTitleState {
  _$ConvTitleStateImpl({
    final List<ConvSessionData> data = const [],
    this.isLoading = false,
  }) : _data = data;

  final List<ConvSessionData> _data;
  @override
  @JsonKey()
  List<ConvSessionData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'ConvTitleState(data: $data, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvTitleStateImpl &&
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

  /// Create a copy of ConvTitleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConvTitleStateImplCopyWith<_$ConvTitleStateImpl> get copyWith =>
      __$$ConvTitleStateImplCopyWithImpl<_$ConvTitleStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ConvTitleState implements ConvTitleState {
  factory _ConvTitleState({
    final List<ConvSessionData> data,
    final bool isLoading,
  }) = _$ConvTitleStateImpl;

  @override
  List<ConvSessionData> get data;
  @override
  bool get isLoading;

  /// Create a copy of ConvTitleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConvTitleStateImplCopyWith<_$ConvTitleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
