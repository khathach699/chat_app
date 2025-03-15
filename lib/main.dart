import 'package:chat_app/Configs/Themes.dart';
import 'package:chat_app/Pages/Welcome/WelcomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat app',
      theme: lightTheme,
      darkTheme: darktheme,
      themeMode: ThemeMode.light,
      home: const WelcomePage(),
    );
  }
}
