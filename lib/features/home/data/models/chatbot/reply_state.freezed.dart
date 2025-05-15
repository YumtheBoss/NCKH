// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ReplyState {
  ReplyModel get reply => throw _privateConstructorUsedError;
  ReplyModel get terms => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReplyStateCopyWith<ReplyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyStateCopyWith<$Res> {
  factory $ReplyStateCopyWith(
    ReplyState value,
    $Res Function(ReplyState) then,
  ) = _$ReplyStateCopyWithImpl<$Res, ReplyState>;
  @useResult
  $Res call({ReplyModel reply, ReplyModel terms, bool isLoading});

  $ReplyModelCopyWith<$Res> get reply;
  $ReplyModelCopyWith<$Res> get terms;
}

/// @nodoc
class _$ReplyStateCopyWithImpl<$Res, $Val extends ReplyState>
    implements $ReplyStateCopyWith<$Res> {
  _$ReplyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reply = null,
    Object? terms = null,
    Object? isLoading = null,
  }) {
    return _then(
      _value.copyWith(
            reply:
                null == reply
                    ? _value.reply
                    : reply // ignore: cast_nullable_to_non_nullable
                        as ReplyModel,
            terms:
                null == terms
                    ? _value.terms
                    : terms // ignore: cast_nullable_to_non_nullable
                        as ReplyModel,
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReplyModelCopyWith<$Res> get reply {
    return $ReplyModelCopyWith<$Res>(_value.reply, (value) {
      return _then(_value.copyWith(reply: value) as $Val);
    });
  }

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReplyModelCopyWith<$Res> get terms {
    return $ReplyModelCopyWith<$Res>(_value.terms, (value) {
      return _then(_value.copyWith(terms: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReplyStateImplCopyWith<$Res>
    implements $ReplyStateCopyWith<$Res> {
  factory _$$ReplyStateImplCopyWith(
    _$ReplyStateImpl value,
    $Res Function(_$ReplyStateImpl) then,
  ) = __$$ReplyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ReplyModel reply, ReplyModel terms, bool isLoading});

  @override
  $ReplyModelCopyWith<$Res> get reply;
  @override
  $ReplyModelCopyWith<$Res> get terms;
}

/// @nodoc
class __$$ReplyStateImplCopyWithImpl<$Res>
    extends _$ReplyStateCopyWithImpl<$Res, _$ReplyStateImpl>
    implements _$$ReplyStateImplCopyWith<$Res> {
  __$$ReplyStateImplCopyWithImpl(
    _$ReplyStateImpl _value,
    $Res Function(_$ReplyStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reply = null,
    Object? terms = null,
    Object? isLoading = null,
  }) {
    return _then(
      _$ReplyStateImpl(
        reply:
            null == reply
                ? _value.reply
                : reply // ignore: cast_nullable_to_non_nullable
                    as ReplyModel,
        terms:
            null == terms
                ? _value.terms
                : terms // ignore: cast_nullable_to_non_nullable
                    as ReplyModel,
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

class _$ReplyStateImpl implements _ReplyState {
  _$ReplyStateImpl({
    this.reply = const ReplyModel(),
    this.terms = const ReplyModel(),
    this.isLoading = false,
  });

  @override
  @JsonKey()
  final ReplyModel reply;
  @override
  @JsonKey()
  final ReplyModel terms;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'ReplyState(reply: $reply, terms: $terms, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyStateImpl &&
            (identical(other.reply, reply) || other.reply == reply) &&
            (identical(other.terms, terms) || other.terms == terms) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reply, terms, isLoading);

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyStateImplCopyWith<_$ReplyStateImpl> get copyWith =>
      __$$ReplyStateImplCopyWithImpl<_$ReplyStateImpl>(this, _$identity);
}

abstract class _ReplyState implements ReplyState {
  factory _ReplyState({
    final ReplyModel reply,
    final ReplyModel terms,
    final bool isLoading,
  }) = _$ReplyStateImpl;

  @override
  ReplyModel get reply;
  @override
  ReplyModel get terms;
  @override
  bool get isLoading;

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReplyStateImplCopyWith<_$ReplyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
