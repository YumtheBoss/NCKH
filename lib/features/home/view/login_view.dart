import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../routes/routes.dart';
import '../provider/check_login_provider.dart';

class LoginView extends HookConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passwordVisible = useState(false);
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 80),
              Image.asset('assets/images/humg_logo.webp', height: 200),

              const SizedBox(height: 20),

              // Tiêu đề
              RichText(
                text: const TextSpan(
                  text: "HUMG ",
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                  children: [
                    TextSpan(
                      text: "eUni",
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // Ô nhập mã người dùng
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  labelText: "Mã người dùng",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // Ô nhập mật khẩu
              TextField(
                controller: passwordController,
                obscureText: !passwordVisible.value,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  labelText: "Mật khẩu",
                  suffixIcon: IconButton(
                    icon: Icon(
                      passwordVisible.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      passwordVisible.value = !passwordVisible.value;
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Quên mật khẩu
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Thêm logic xử lý quên mật khẩu
                  },
                  child: const Text(
                    "Quên mật khẩu",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Nút đăng nhập
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    if (usernameController.text.isNotEmpty && passwordController.text.isNotEmpty) {
  ref.read(isLoginProvider.notifier).login(
    id: usernameController.text.trim(),
    name: 'Người dùng', // nếu có thêm field "Họ tên" thì lấy ở đây
  );
  Navigator.popUntil(context, ModalRoute.withName(Routes.home));
  Navigator.pushReplacementNamed(context, Routes.home);
} else {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text("Vui lòng nhập đầy đủ mã người dùng và mật khẩu"),
    ),
  );
}

                  },
                  child: const Text(
                    "Đăng nhập",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Phiên bản
              const Text(
                "Phiên bản: 1.0.0",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
