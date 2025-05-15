import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../routes/routes.dart';
import '../provider/check_login_provider.dart';
class ProfileView extends ConsumerWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLogin = ref.watch(isLoginProvider);

    return !isLogin
        ? Scaffold(
          appBar: AppBar(
            title: const Text('Cá nhân'),
            titleTextStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            centerTitle: true,
            backgroundColor: Colors.blue[900],
          ),
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Vui lòng đăng nhập để sử dụng tính năng này',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.login);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      'Đăng nhập',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
        : Scaffold(
          appBar: AppBar(
            title: const Text('Cá nhân'),
            titleTextStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            centerTitle: true,
            backgroundColor: Colors.blue[900],
          ),
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 5),
                    CircleAvatar(
                      backgroundColor: Colors.grey[100],
                      radius: 50,
                      child: Text(
                        'TH',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Trần Văn Hào',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '2121050046',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              ListTile(
                title: const Text('Thông tin cá nhân'),
                leading: const Icon(Icons.person),
                onTap: () {},
              ),
              const Divider(height: 1, color: Colors.grey),
              ListTile(
                title: const Text('Đổi mật khẩu'),
                leading: const Icon(Icons.lock),
                onTap: () {},
              ),
              const Divider(height: 1, color: Colors.grey),
              ListTile(
                title: const Text('Đăng xuất'),
                leading: const Icon(Icons.logout),
                onTap: () {
                  /// push to login page
                  ref.read(isLoginProvider.notifier).logout();
                  Navigator.pushNamed(context, Routes.login);
                },
              ),
              const Divider(height: 1, color: Colors.grey),
              const Spacer(),
              const Text(
                'Phiên bản 1.0.0',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
  }
}
