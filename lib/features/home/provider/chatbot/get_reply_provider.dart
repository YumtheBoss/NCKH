import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:humg_ai_chat_app/features/home/data/models/chatbot/reply_state.dart';

import '../../data/models/chatbot/reply_model.dart';
import '../../data/repository/home_repository.dart';
import '../home_provider.dart';


final getReplyProvider = StateNotifierProvider<GetReplyNotifier, ReplyState>((ref) {
  return GetReplyNotifier(ref.read(homeRepositoryProvider));
});

class GetReplyNotifier extends StateNotifier<ReplyState> {
  GetReplyNotifier(this.homeRepository) : super(ReplyState());
  HomeRepository homeRepository;

  Future<void> getReply({String? nameBot, String? idRequest, String? mssv, String? userName, String? inputText}) async {
    state = state.copyWith(isLoading: true, reply: const ReplyModel());
    await homeRepository.fetchReply(nameBot: nameBot, idRequest: idRequest, mssv: mssv, userName: userName, inputText: inputText).then((data) {
      state = state.copyWith(reply: data, isLoading: false);
    });
  }

  Future<void> getTerms() async {
    state = state.copyWith(isLoading: true, terms: const ReplyModel());
    await homeRepository.fetchTerms().then((data) {
      state = state.copyWith(terms: data, isLoading: false);
    });
  }
}
