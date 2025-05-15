import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_conv_model.freezed.dart';

part 'detail_conv_model.g.dart';

@freezed
class HistoryConvModel with _$HistoryConvModel {
  const factory HistoryConvModel({
    List<DetailConvModel>? data,
  }) = _HistoryConvModel;

  factory HistoryConvModel.fromJson(Map<String, dynamic> json) =>
      _$HistoryConvModelFromJson(json);
}


@freezed
class DetailConvModel with _$DetailConvModel {
  const factory DetailConvModel({
    String? human,
    String? ai,
  }) = _DetailConvModel;
  factory DetailConvModel.fromJson(Map<String, dynamic> json) =>
      _$DetailConvModelFromJson(json);
}

