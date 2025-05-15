// notifications_view.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationsView extends StatelessWidget {
  NotificationsView({super.key});

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
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông báo chung'),
        titleTextStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                return _buildNotifierItem(
                  notifications[index]['title']!,
                  notifications[index]['time']!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotifierItem(String title, String time) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            time,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}