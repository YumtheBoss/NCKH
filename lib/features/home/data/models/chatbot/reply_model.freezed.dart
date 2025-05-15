// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReplyModel _$ReplyModelFromJson(Map<String, dynamic> json) {
  return _ReplyModel.fromJson(json);
}

/// @nodoc
mixin _$ReplyModel {
  List<String>? get terms => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get timeProcessing => throw _privateConstructorUsedError;
  String? get endMessage => throw _privateConstructorUsedError;
  int? get totalToken => throw _privateConstructorUsedError;
  double? get totalCost => throw _privateConstructorUsedError;

  /// Serializes this ReplyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReplyModelCopyWith<ReplyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyModelCopyWith<$Res> {
  factory $ReplyModelCopyWith(
    ReplyModel value,
    $Res Function(ReplyModel) then,
  ) = _$ReplyModelCopyWithImpl<$Res, ReplyModel>;
  @useResult
  $Res call({
    List<String>? terms,
    String? content,
    int? status,
    String? message,
    String? timeProcessing,
    String? endMessage,
    int? totalToken,
    double? totalCost,
  });
}

/// @nodoc
class _$ReplyModelCopyWithImpl<$Res, $Val extends ReplyModel>
    implements $ReplyModelCopyWith<$Res> {
  _$ReplyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terms = freezed,
    Object? content = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? timeProcessing = freezed,
    Object? endMessage = freezed,
    Object? totalToken = freezed,
    Object? totalCost = freezed,
  }) {
    return _then(
      _value.copyWith(
            terms:
                freezed == terms
                    ? _value.terms
                    : terms // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            content:
                freezed == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as String?,
            status:
                freezed == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as int?,
            message:
                freezed == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String?,
            timeProcessing:
                freezed == timeProcessing
                    ? _value.timeProcessing
                    : timeProcessing // ignore: cast_nullable_to_non_nullable
                        as String?,
            endMessage:
                freezed == endMessage
                    ? _value.endMessage
                    : endMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
            totalToken:
                freezed == totalToken
                    ? _value.totalToken
                    : totalToken // ignore: cast_nullable_to_non_nullable
                        as int?,
            totalCost:
                freezed == totalCost
                    ? _value.totalCost
                    : totalCost // ignore: cast_nullable_to_non_nullable
                        as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReplyModelImplCopyWith<$Res>
    implements $ReplyModelCopyWith<$Res> {
  factory _$$ReplyModelImplCopyWith(
    _$ReplyModelImpl value,
    $Res Function(_$ReplyModelImpl) then,
  ) = __$$ReplyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String>? terms,
    String? content,
    int? status,
    String? message,
    String? timeProcessing,
    String? endMessage,
    int? totalToken,
    double? totalCost,
  });
}

/// @nodoc
class __$$ReplyModelImplCopyWithImpl<$Res>
    extends _$ReplyModelCopyWithImpl<$Res, _$ReplyModelImpl>
    implements _$$ReplyModelImplCopyWith<$Res> {
  __$$ReplyModelImplCopyWithImpl(
    _$ReplyModelImpl _value,
    $Res Function(_$ReplyModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terms = freezed,
    Object? content = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? timeProcessing = freezed,
    Object? endMessage = freezed,
    Object? totalToken = freezed,
    Object? totalCost = freezed,
  }) {
    return _then(
      _$ReplyModelImpl(
        terms:
            freezed == terms
                ? _value._terms
                : terms // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        content:
            freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as String?,
        status:
            freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as int?,
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
        timeProcessing:
            freezed == timeProcessing
                ? _value.timeProcessing
                : timeProcessing // ignore: cast_nullable_to_non_nullable
                    as String?,
        endMessage:
            freezed == endMessage
                ? _value.endMessage
                : endMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
        totalToken:
            freezed == totalToken
                ? _value.totalToken
                : totalToken // ignore: cast_nullable_to_non_nullable
                    as int?,
        totalCost:
            freezed == totalCost
                ? _value.totalCost
                : totalCost // ignore: cast_nullable_to_non_nullable
                    as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyModelImpl implements _ReplyModel {
  const _$ReplyModelImpl({
    final List<String>? terms,
    this.content,
    this.status,
    this.message,
    this.timeProcessing,
    this.endMessage,
    this.totalToken,
    this.totalCost,
  }) : _terms = terms;

  factory _$ReplyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyModelImplFromJson(json);

  final List<String>? _terms;
  @override
  List<String>? get terms {
    final value = _terms;
    if (value == null) return null;
    if (_terms is EqualUnmodifiableListView) return _terms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? content;
  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? timeProcessing;
  @override
  final String? endMessage;
  @override
  final int? totalToken;
  @override
  final double? totalCost;

  @override
  String toString() {
    return 'ReplyModel(terms: $terms, content: $content, status: $status, message: $message, timeProcessing: $timeProcessing, endMessage: $endMessage, totalToken: $totalToken, totalCost: $totalCost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyModelImpl &&
            const DeepCollectionEquality().equals(other._terms, _terms) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timeProcessing, timeProcessing) ||
                other.timeProcessing == timeProcessing) &&
            (identical(other.endMessage, endMessage) ||
                other.endMessage == endMessage) &&
            (identical(other.totalToken, totalToken) ||
                other.totalToken == totalToken) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_terms),
    content,
    status,
    message,
    timeProcessing,
    endMessage,
    totalToken,
    totalCost,
  );

  /// Create a copy of ReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyModelImplCopyWith<_$ReplyModelImpl> get copyWith =>
      __$$ReplyModelImplCopyWithImpl<_$ReplyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyModelImplToJson(this);
  }
}

abstract class _ReplyModel implements ReplyModel {
  const factory _ReplyModel({
    final List<String>? terms,
    final String? content,
    final int? status,
    final String? message,
    final String? timeProcessing,
    final String? endMessage,
    final int? totalToken,
    final double? totalCost,
  }) = _$ReplyModelImpl;

  factory _ReplyModel.fromJson(Map<String, dynamic> json) =
      _$ReplyModelImpl.fromJson;

  @override
  List<String>? get terms;
  @override
  String? get content;
  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get timeProcessing;
  @override
  String? get endMessage;
  @override
  int? get totalToken;
  @override
  double? get totalCost;

  /// Create a copy of ReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReplyModelImplCopyWith<_$ReplyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
