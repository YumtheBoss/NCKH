import 'package:dio/dio.dart';

import '../../../../core/network/constant/endpoints.dart';
import '../../../../core/network/dio_client.dart';

class HomeApi {
  // dio instance
  final DioClient _dioClient;

  // injecting dio instance
  HomeApi(this._dioClient);

  Future<Map<String, dynamic>> fetchReplyApiRequest({
    String? nameBot,
    String? idRequest,
    String? mssv,
    String? userName,
    String? inputText,
  }) async {
    try {
      final formData = FormData.fromMap({
        'nameBot': nameBot,
        'idRequest': idRequest,
        'mssv': mssv,
        'userName': userName,
        'inputText': inputText,
      });

      final res = await _dioClient.post(
        '${Endpoints.baseUrl}/chatbot_proactive',
        data: formData,
      );
      return res.data;
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> fetchTermsApiRequest() async {
    try {
      final formData = FormData.fromMap({
        'nameBot': '',
        'idRequest': '',
        'mssv': '',
        'userName': '',
      });

      final res = await _dioClient.post(
        '${Endpoints.baseUrl}/chatbot_proactive',
        data: formData,
      );
      return res.data;
    } catch (e) {
      rethrow;
    }
  }



  Future<Map<String, dynamic>> fetchCovTitle({
    String? mssv,
  }) async {
    try {
      final formData = FormData.fromMap({
        'mssv': mssv,
      });

      final res = await _dioClient.post(
        '${Endpoints.baseUrl}/get_conv_title',
        data: formData,
      );

      if (res.data is Map<String, dynamic> && res.data.containsKey('data')) {
        return res.data['data'];
      } else {
        throw Exception('Unexpected response format');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> fetchHistoryConv({
    String? mssv,
    String? sessionId,
  }) async {
    try {
      final formData = FormData.fromMap({
        'mssv': mssv,
        'sessionId': sessionId,
      });

      final res = await _dioClient.post(
        '${Endpoints.baseUrl}/get_chat_conv',
        data: formData,
      );
      return res.data;

    } catch (e) {
      rethrow;
    }
  }
}
