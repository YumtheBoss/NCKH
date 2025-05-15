// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_conv_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryConvModelImpl _$$HistoryConvModelImplFromJson(
  Map<String, dynamic> json,
) => _$HistoryConvModelImpl(
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => DetailConvModel.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$HistoryConvModelImplToJson(
  _$HistoryConvModelImpl instance,
) => <String, dynamic>{'data': instance.data};

_$DetailConvModelImpl _$$DetailConvModelImplFromJson(
  Map<String, dynamic> json,
) => _$DetailConvModelImpl(
  human: json['human'] as String?,
  ai: json['ai'] as String?,
);

Map<String, dynamic> _$$DetailConvModelImplToJson(
  _$DetailConvModelImpl instance,
) => <String, dynamic>{'human': instance.human, 'ai': instance.ai};
