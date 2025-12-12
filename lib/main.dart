import 'package:flutter/material.dart';
import 'package:mobile_jurnalku/catatan_perilaku.dart';
import 'package:mobile_jurnalku/explore_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket pag',
      home: const StudentDirectoryPage(),
    );
  }
}
