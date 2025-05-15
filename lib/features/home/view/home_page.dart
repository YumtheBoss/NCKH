import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:humg_ai_chat_app/features/home/provider/chatbot/get_reply_provider.dart';
import 'package:humg_ai_chat_app/features/home/view/profile_view.dart';

import '../provider/check_login_provider.dart';
import 'home_view.dart';
import 'notifications_view.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int _currentIndex = 0;
  late final List<Widget> _pages;
  @override
  void initState() {
    super.initState();

    _pages = [
      HomeView(
        onSeeAllNotifications: () {
          setState(() {
            _currentIndex = 1;
          });
        },
        onOpenProfile: () {
          setState(() {
            _currentIndex = 2;
          });
        },
      ),
      NotificationsView(),
      const ProfileView(),
    ];

    Future.delayed(Duration.zero, () {
      ref.read(getReplyProvider.notifier).getTerms();
    });

  }


  @override
  Widget build(BuildContext context) {

    final isLogin = ref.watch(isLoginProvider);


    return Scaffold(
      backgroundColor: Colors.blue[900],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
                  color: _currentIndex == 0 ? Colors.blue[900] : Colors.grey),
              label: 'Trang chủ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications,
                  color: _currentIndex == 1 ? Colors.blue[900] : Colors.grey),
              label: 'Thông báo',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,
                  color: _currentIndex == 2 ? Colors.blue[900] : Colors.grey),
              label: 'Cá nhân',
            ),
          ],
          selectedItemColor: Colors.blue[900],
        ),
      ),
      body: _pages[_currentIndex],
    );
  }
}