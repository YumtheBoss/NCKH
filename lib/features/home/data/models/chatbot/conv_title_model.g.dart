// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conv_title_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConvTitleModelImpl _$$ConvTitleModelImplFromJson(Map<String, dynamic> json) =>
    _$ConvTitleModelImpl(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => ConvSessionData.fromJson(e as Map<String, dynamic>))
              .toList(),
      statusCode: (json['statusCode'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ConvTitleModelImplToJson(
  _$ConvTitleModelImpl instance,
) => <String, dynamic>{
  'data': instance.data,
  'statusCode': instance.statusCode,
  'message': instance.message,
};

_$ConvSessionDataImpl _$$ConvSessionDataImplFromJson(
  Map<String, dynamic> json,
) => _$ConvSessionDataImpl(
  sessionId: json['session_id'] as String?,
  title: json['title'] as String?,
);

Map<String, dynamic> _$$ConvSessionDataImplToJson(
  _$ConvSessionDataImpl instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'title': instance.title,
};
