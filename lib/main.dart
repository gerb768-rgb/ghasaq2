import 'package:flutter/material.dart';

void main() => runApp(const GhasaqApp());

class GhasaqApp extends StatelessWidget {
  const GhasaqApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("نظام غسق للإدارة")),
        body: Column(
          children: [
            // شريط الإحصائيات العلوي
            Container(
              padding: const EdgeInsets.all(15),
              color: Colors.blue.shade50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _statItem("المخزون", "84-"),
                  _statItem("المبيعات", "2,664.48"),
                ],
              ),
            ),
            // قائمة العمليات (مثل المحاسب الشامل)
            Expanded(
              child: ListView(
                children: [
                  _operationTile("صرف وصفات طبية", "2", "2,664.20"),
                  _operationTile("نتائج تحاليل معملية", "0", "0.00"),
                  _operationTile("طلبيات أدوية", "0", "0.00"),
                  _operationTile("مرتجعات أصناف", "0", "0.00"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _statItem(String title, String value) {
    return Column(
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(value, style: const TextStyle(fontSize: 16, color: Colors.blue)),
      ],
    );
  }

  Widget _operationTile(String name, String count, String total) {
    return ListTile(
      title: Text(name),
      subtitle: Text("العدد: $count"),
      trailing: Text(total, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
