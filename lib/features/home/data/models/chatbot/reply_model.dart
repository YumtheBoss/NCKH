import 'package:freezed_annotation/freezed_annotation.dart';

part 'reply_model.freezed.dart';

part 'reply_model.g.dart';

@freezed
class ReplyModel with _$ReplyModel {
  const factory ReplyModel({
    List<String>? terms,
    String? content,
    int? status,
    String? message,
    String? timeProcessing,
    String? endMessage,
    int? totalToken,
    double? totalCost,
  }) = _ReplyModel;
  factory ReplyModel.fromJson(Map<String, dynamic> json) =>
      _$ReplyModelFromJson(json);
}