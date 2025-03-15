import 'package:chat_app/Pages/Auth/AuthPage.dart';
import 'package:chat_app/Pages/HomePage/HomePage.dart';
import 'package:get/get_navigation/get_navigation.dart';

var pagePath = [
  GetPage(
    name: "/authPage",
    page: () => const AuthPage(),
    transition: Transition.rightToLeft,
  ),

  GetPage(
    name: "/homePage",
    page: () => const HomePage(),
    transition: Transition.rightToLeft,
  ),
];
