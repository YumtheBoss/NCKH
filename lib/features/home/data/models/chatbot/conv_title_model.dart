import 'package:freezed_annotation/freezed_annotation.dart';

part 'conv_title_model.freezed.dart';

part 'conv_title_model.g.dart';

@freezed
class ConvTitleModel with _$ConvTitleModel {
  const factory ConvTitleModel({
    List<ConvSessionData>? data,
    int? statusCode,
    String? message,
  }) = _ConvTitleModel;
  factory ConvTitleModel.fromJson(Map<String, dynamic> json) =>
      _$ConvTitleModelFromJson(json);
}


@freezed
class ConvSessionData with _$ConvSessionData {
  const factory ConvSessionData({
    @JsonKey(name: 'session_id')
    String? sessionId,
    String? title,
  }) = _ConvSessionData;
  factory ConvSessionData.fromJson(Map<String, dynamic> json) =>
      _$ConvSessionDataFromJson(json);
}

