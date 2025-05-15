// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReplyModelImpl _$$ReplyModelImplFromJson(Map<String, dynamic> json) =>
    _$ReplyModelImpl(
      terms:
          (json['terms'] as List<dynamic>?)?.map((e) => e as String).toList(),
      content: json['content'] as String?,
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      timeProcessing: json['timeProcessing'] as String?,
      endMessage: json['endMessage'] as String?,
      totalToken: (json['totalToken'] as num?)?.toInt(),
      totalCost: (json['totalCost'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ReplyModelImplToJson(_$ReplyModelImpl instance) =>
    <String, dynamic>{
      'terms': instance.terms,
      'content': instance.content,
      'status': instance.status,
      'message': instance.message,
      'timeProcessing': instance.timeProcessing,
      'endMessage': instance.endMessage,
      'totalToken': instance.totalToken,
      'totalCost': instance.totalCost,
    };
