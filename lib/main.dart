import 'package:flutter/material.dart';

void main() => runApp(const GhasaqApp());

class GhasaqApp extends StatelessWidget {
  const GhasaqApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("نظام غسق - لوحة التحكم")),
        body: Column(
          children: [
            // شريط الإحصائيات
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.blue.shade50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _statItem("المخزون", "84-"),
                  _statItem("المبيعات", "2,664"),
                ],
              ),
            ),
            const Expanded(child: Center(child: Text("هنا سيظهر الرسم البياني والعمليات"))),
          ],
        ),
      ),
    );
  }

  Widget _statItem(String title, String value) {
    return Column(
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(value, style: const TextStyle(fontSize: 18, color: Colors.blue)),
      ],
    );
  }
}
