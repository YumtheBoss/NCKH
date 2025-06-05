import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../routes/routes.dart';
import '../provider/check_login_provider.dart';
import '../provider/home_provider.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key, required this.onSeeAllNotifications, required this.onOpenProfile});

  final VoidCallback onSeeAllNotifications;
  final VoidCallback onOpenProfile;

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends ConsumerState<HomeView> {
  final PageController _pageController = PageController();
  final ValueNotifier<int> _currentPageNotifier = ValueNotifier<int>(0);
  Offset position = const Offset(0, 300);

  @override
  Widget build(BuildContext context) {
    final isLogin = ref.watch(isLoginProvider);
    final Size screenSize = MediaQuery.of(context).size;
    const double iconSize = 65.0;
    const double padding = 12.0;

    Widget _buildHeader() {
      return Container(
        width: double.infinity,
        color: Colors.blue[900],
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            top: 60,
            right: 16.0,
            bottom: 25.0,
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    isLogin
                        ? 'Chào, Trần Văn Hào'
                        : 'Đăng nhập để sử dụng\ncác dịch vụ',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  if (isLogin) ...[
                    const Text(
                      '2121050046',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),

                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: Colors.white,
                          size: 16,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '2121050046@student.humg.edu.vn',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
              const Spacer(),
              GestureDetector(
                child:
                    isLogin
                        ? CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          radius: 35,
                          child: Text(
                            'TH',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                        : CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          radius: 35,
                          child: Icon(
                            Icons.person,
                            color: Colors.grey[700],
                            size: 40,
                          ),
                        ),
                onTap: () {
                  if (!isLogin) {
                    Navigator.pushNamed(context, '/login');
                  } else {
                    widget.onOpenProfile();
                  }
                },
              ),
            ],
          ),
        ),
      );
    }

    Widget _buildNotifierItem(String title, String time) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Center(
                child: Text(
                  time,
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget _buildNotifications() {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Thông báo',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    widget.onSeeAllNotifications();
                  },
                  child: Text(
                    'Xem tất cả',
                    style: TextStyle(color: Colors.blue[900]),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 150,
              child: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: 5,
                      onPageChanged: (index) {
                        _currentPageNotifier.value = index;
                      },
                      itemBuilder: (context, index) {
                        final List<Map<String, String>> notifications = [
                          {
                            'title': 'Thông báo học phí',
                            'time': '12:00 12/12/2021',
                          },
                          {
                            'title': 'Lịch thi cuối kỳ',
                            'time': '09:30 15/12/2021',
                          },
                          {
                            'title': 'Đăng ký học phần',
                            'time': '14:15 18/12/2021',
                          },
                          {
                            'title': 'Thông báo nghỉ lễ',
                            'time': '16:45 20/12/2021',
                          },
                          {
                            'title': 'Lịch sinh hoạt lớp',
                            'time': '08:00 22/12/2021',
                          },
                        ];
                        return _buildNotifierItem(
                          notifications[index]['title']!,
                          notifications[index]['time']!,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                  ValueListenableBuilder<int>(
                    valueListenable: _currentPageNotifier,
                    builder: (context, currentPage, _) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          5,
                          (index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  currentPage == index
                                      ? Colors.blue[900]
                                      : Colors.grey[300],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget _buildMenuGrid() {
      List<Map<String, dynamic>> menuItems = [
        {
          'icon': Icons.calendar_today,
          'label': 'Thời khóa biểu',
          'color': Colors.red,
        },
        {'icon': Icons.grade, 'label': 'Xem điểm', 'color': Colors.blue, 'onTap' : () {Navigator.pushNamed(context, Routes.login);}},
        {'icon': Icons.event, 'label': 'Lịch thi', 'color': Colors.purple[300], 'onTap' : () {Navigator.pushNamed(context, Routes.login);}},
        {'icon': Icons.edit, 'label': 'Đăng ký môn', 'color': Colors.blue[500], 'onTap' : () {Navigator.pushNamed(context, Routes.login);}},
        {'icon': Icons.attach_money, 'label': 'Học phí', 'color': Colors.green},
        {'icon': Icons.article, 'label': 'Tin tức', 'color': Colors.blue[700]},
        {'label': 'Chatbot tư vấn', 'icon': Icons.chat, 'color': Colors.orange,
         'onTap' : () {
          Navigator.pushNamed(context, Routes.chatbot);
        }},

        // {
        //   'icon' : Icons.dashboard,
        //   'color' : Colors.blue,
        //   'label': 'Dashboard',
        //   'onTap' : () {
        //     Navigator.pushNamed(context, Routes.dashboard);
        //   }
        // },
      ];

      return Padding(
        padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            return Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  if (menuItems[index]['onTap'] != null) {
                    menuItems[index]['onTap']();
                  }
                },
                borderRadius: BorderRadius.circular(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: menuItems[index]['color'],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Icon(
                        menuItems[index]['icon'],
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      menuItems[index]['label'],
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    }

    return Stack(
      children: [
        Column(
          children: [
            _buildHeader(),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    _buildNotifications(),
                    Expanded(child: _buildMenuGrid()),
                  ],
                ),
              ),
            ),

            // _buildBottomNavigation(),
          ],
        ),
        Positioned(
          left: position.dx,
          top: position.dy,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.chatbot);
            },
            onPanUpdate: (details) {
              setState(() {
                position = Offset(
                  (position.dx + details.delta.dx)
                      .clamp(12.0, screenSize.width - iconSize - 12.0),
                  (position.dy + details.delta.dy).clamp(
                    AppBar().preferredSize.height,
                    screenSize.height -
                        kBottomNavigationBarHeight -
                        iconSize,
                  ),
                );
              });
            },
            onPanEnd: (details) {
              setState(() {
                if (position.dx < screenSize.width / 2) {
                  position = Offset(padding, position.dy);
                } else {
                  position = Offset(
                      screenSize.width - iconSize - padding, position.dy);
                }
                position = Offset(
                  position.dx,
                  position.dy.clamp(
                    AppBar().preferredSize.height + padding * 2,
                    screenSize.height -
                        kBottomNavigationBarHeight -
                        iconSize,
                  ),
                );
              });
            },
            child: Container(
              width: iconSize,
              height: iconSize,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              padding: const EdgeInsets.all(8),
              child: const Image(
                image: AssetImage('assets/images/icon_chatbot.png'),
                width: 40,
              )
            ),
          ),),
      ],
    );
  }
}
