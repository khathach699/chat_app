import 'package:chat_app/Configs/PagePath.dart';
import 'package:chat_app/Configs/Themes.dart';
import 'package:chat_app/Pages/Welcome/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Chat app',
      theme: lightTheme, // Dùng theme sáng
      getPages: pagePath,
      darkTheme: darktheme, // Dùng theme tối
      themeMode: ThemeMode.light, // Mặc định dùng theme sáng
      home: const WelcomePage(),
    );
  }
}
