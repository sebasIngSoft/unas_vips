import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
// import 'package:unas_vip/presentation/login/view/login_view.dart';
// import 'package:unas_vip/presentation/register/view/menu_register.dart';
import 'package:unas_vip/presentation/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
