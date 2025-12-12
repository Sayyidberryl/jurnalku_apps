import 'package:flutter/material.dart';
import 'package:mobile_jurnalku/journal_page.dart';
import 'package:mobile_jurnalku/progres.dart';
import 'panduan_pengguna.dart';
import 'login.dart';
import 'dashboard.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Dashboard(),
    );
  }
}