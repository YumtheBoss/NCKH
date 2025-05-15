import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:humg_ai_chat_app/features/home/data/models/chatbot/detail_conv_model.dart';

part 'detail_conv_state.freezed.dart';

@freezed
class DetailConvState with _$DetailConvState {
  factory DetailConvState({
    @Default([]) List<DetailConvModel> data,
    @Default(false) bool isLoading,
  }) = _DetailConvState;
}
