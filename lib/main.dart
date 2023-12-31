import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nus_infrastrukture/screen/pages/login/login_page.dart';
import 'package:nus_infrastrukture/share/share.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'book',
      color: dark,
      home: const LoginPage(),
    );
  }
}