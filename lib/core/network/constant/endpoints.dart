class Endpoints {
  // base url
  static const String baseUrl =
      "http://118.70.196.130:8888";

  // receiveTimeout
  static const int receiveTimeout = 30000;

  // connectTimeout
  static const int connectionTimeout = 30000;

  static const proactive = "$baseUrl/chatbot_proactive";
  static const chatConv = "$baseUrl/get_chat_conv";
  static const getTitle = "$baseUrl/get_conv_title";
}
