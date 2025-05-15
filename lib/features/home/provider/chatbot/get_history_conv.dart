import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:humg_ai_chat_app/features/home/data/models/chatbot/detail_conv_state.dart';
import '../../data/repository/home_repository.dart';
import '../home_provider.dart';


final getHistoryConvProvider = StateNotifierProvider<GetHistoryConvNotifier, DetailConvState>((ref) {
  return GetHistoryConvNotifier(ref.read(homeRepositoryProvider));
});

class GetHistoryConvNotifier extends StateNotifier<DetailConvState> {
  GetHistoryConvNotifier(this.homeRepository) : super(DetailConvState());
  HomeRepository homeRepository;

  Future<void> getHistoryConv({String? mssv, String? sessionId}) async {
    state = state.copyWith(isLoading: true, data: []);
    await homeRepository.fetchHistoryConv(mssv: mssv, sessionId: sessionId).then((data) {
      state = state.copyWith(data: data, isLoading: false);
    });
  }
}
