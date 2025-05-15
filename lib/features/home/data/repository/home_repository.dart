import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:humg_ai_chat_app/features/home/data/models/chatbot/conv_title_model.dart';
import 'package:humg_ai_chat_app/features/home/data/models/chatbot/detail_conv_model.dart';


import '../../../../core/network/dio_exceptions.dart';
import '../api/home_api.dart';
import '../models/chatbot/reply_model.dart';

class HomeRepository {
  final HomeApi _homeApi;

  HomeRepository(this._homeApi);

  Future<ReplyModel> fetchReply({String? nameBot, String? idRequest, String? mssv, String? userName, String? inputText}) async {
    try {
      final res = await _homeApi.fetchReplyApiRequest(nameBot: nameBot, idRequest: idRequest, mssv: mssv, userName: userName, inputText: inputText);
      final replyModel = ReplyModel.fromJson(res);
      return replyModel;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e);
      log(errorMessage.toString());
      rethrow;
    }
  }

  Future<List<ConvSessionData>> fetchConvTitle({String? mssv}) async {
    try {
      final res = await _homeApi.fetchCovTitle(mssv: mssv);
      final convTitleModel = ConvTitleModel.fromJson(res);
      return convTitleModel.data!;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e);
      log(errorMessage.toString());
      rethrow;
    }
  }


  Future<List<DetailConvModel>> fetchHistoryConv({String? mssv, String? sessionId}) async {
    try {
      final res = await _homeApi.fetchHistoryConv(mssv: mssv, sessionId: sessionId);
      final historyConvModel = HistoryConvModel.fromJson(res);
      return historyConvModel.data!;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e);
      log(errorMessage.toString());
      rethrow;
    }
  }

  Future<ReplyModel> fetchTerms() async {
    try {
      final res = await _homeApi.fetchTermsApiRequest();
      final replyModel = ReplyModel.fromJson(res);
      return replyModel;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e);
      log(errorMessage.toString());
      rethrow;
    }
  }
}
