import 'package:chat_app/Pages/Auth/AuthPage.dart';
import 'package:get/get_navigation/get_navigation.dart';

var pagePath = [
  GetPage(
    name: "/authPage",
    page: () => AuthPage(),
    transition: Transition.rightToLeft,
  ),
];
