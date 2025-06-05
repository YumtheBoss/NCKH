// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class DashboardView extends StatelessWidget {
//   DashboardView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Dashboard')),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Text('Ngành học được hỏi nhiều nhất', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             SizedBox(height: 200, child: BarChart(_mostAskedMajors())),
//             SizedBox(height: 24),
//             Text('Số lượng session chatbot theo thời điểm', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             SizedBox(height: 200, child: BarChart(_chatbotSessions())),
//           ],
//         ),
//       ),
//     );
//   }

//   BarChartData _mostAskedMajors() {
//     return BarChartData(
//       barGroups: [
//         BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 20)]), // CNTT
//         BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 14)]), // Kinh tế
//         BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 11)]), // Y dược
//         BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 8)]),  // Luật
//       ],
//       titlesData: FlTitlesData(
//         leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
//         bottomTitles: AxisTitles(
//           sideTitles: SideTitles(
//             showTitles: true,
//             getTitlesWidget: (value, meta) {
//               switch (value.toInt()) {
//                 case 0: return Text('CNTT');
//                 case 1: return Text('Kinh tế');
//                 case 2: return Text('Y dược');
//                 case 3: return Text('Luật');
//                 default: return Text('');
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   BarChartData _chatbotSessions() {
//     return BarChartData(
//       barGroups: [
//         BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 15)]), // CNTT - sáng
//         BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 30)]), // CNTT - tối
//         BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 10)]), // Kinh tế - sáng
//         BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 22)]), // Kinh tế - tối
//       ],
//       titlesData: FlTitlesData(
//         leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
//         bottomTitles: AxisTitles(
//           sideTitles: SideTitles(
//             showTitles: true,
//             getTitlesWidget: (value, meta) {
//               switch (value.toInt()) {
//                 case 0: return Text('CNTT\nSáng', textAlign: TextAlign.center);
//                 case 1: return Text('CNTT\nTối', textAlign: TextAlign.center);
//                 case 2: return Text('Kinh tế\nSáng', textAlign: TextAlign.center);
//                 case 3: return Text('Kinh tế\nTối', textAlign: TextAlign.center);
//                 default: return Text('');
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
