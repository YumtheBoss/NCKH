
import 'package:humg_ai_chat_app/features/home/view/chatbot_page.dart';
import 'package:humg_ai_chat_app/features/home/view/dashboard_view.dart';
import 'package:humg_ai_chat_app/features/home/view/login_view.dart';
import 'package:humg_ai_chat_app/routes/routes.dart';

import '../features/home/view/home_page.dart';

class AppRoutes {
  static final routes = {
    Routes.home: (context) => HomePage(),
    Routes.login: (context) => LoginView(),
    Routes.chatbot: (context) => ChatScreen(),
    Routes.dashboard: (context) => DashboardView(),
  };
}
