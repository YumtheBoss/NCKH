import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:humg_ai_chat_app/features/home/data/models/chatbot/conv_title_state.dart';
import '../../data/repository/home_repository.dart';
import '../home_provider.dart';


final getConvTitleProvider = StateNotifierProvider<GetConvTitleNotifier, ConvTitleState>((ref) {
  return GetConvTitleNotifier(ref.read(homeRepositoryProvider));
});

class GetConvTitleNotifier extends StateNotifier<ConvTitleState> {
  GetConvTitleNotifier(this.homeRepository) : super(ConvTitleState());
  HomeRepository homeRepository;

  Future<void> getConvTitle({String? mssv}) async {
    state = state.copyWith(isLoading: true, data: []);
    await homeRepository.fetchConvTitle(mssv: mssv).then((data) {
      state = state.copyWith(data: data, isLoading: false);
    });
  }
}
