import 'package:flutter/material.dart';

void main() {
  runApp(const GhasaqApp());
}

class GhasaqApp extends StatelessWidget {
  const GhasaqApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'صيدليات ومعامل غسق',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text("نظام غسق للإدارة")),
        body: const Center(
          child: Text(
            "مرحباً بك في نظام إدارة الصيدليات والمعامل",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
