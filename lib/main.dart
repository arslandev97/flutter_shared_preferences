import 'package:flutter/material.dart';
import 'package:preferences_app/multi_role_base_app/admin.dart';
import 'package:preferences_app/multi_role_base_app/loading.dart';
import 'package:preferences_app/multi_role_base_app/login.dart';
import 'package:preferences_app/multi_role_base_app/student.dart';
import 'package:preferences_app/multi_role_base_app/teacher.dart';
import 'package:preferences_app/screens/loading.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LmsLoadingScreen(),
    );
  }
}

