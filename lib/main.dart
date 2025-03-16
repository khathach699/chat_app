import 'package:chat_app/Configs/PagePath.dart';
import 'package:chat_app/Configs/Themes.dart';
import 'package:chat_app/Pages/Welcome/WelcomePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
