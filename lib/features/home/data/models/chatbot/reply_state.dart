import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:humg_ai_chat_app/features/home/data/models/chatbot/reply_model.dart';


part 'reply_state.freezed.dart';

@freezed
class ReplyState with _$ReplyState {
  factory ReplyState({
    @Default(ReplyModel()) ReplyModel reply,
    @Default(ReplyModel()) ReplyModel terms,
    @Default(false) bool isLoading,
  }) = _ReplyState;
}
