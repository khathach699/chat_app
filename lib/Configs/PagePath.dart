import 'package:chat_app/Pages/Auth/AuthPage.dart';
import 'package:chat_app/Pages/Chat/ChatPage.dart';
import 'package:chat_app/Pages/Home/HomePage.dart';
import 'package:chat_app/Pages/ProfilePage/ProfilePage.dart';
import 'package:chat_app/UserProfiles/ProfilePage.dart';
import 'package:chat_app/UserProfiles/UpdateProfile.dart';
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

  GetPage(
    name: "/chatPage",
    page: () => const ChatPage(),
    transition: Transition.rightToLeft,
  ),

  GetPage(
    name: "/login",
    page: () => const AuthPage(),
    transition: Transition.rightToLeft,
  ),

  GetPage(
    name: "/profilePage",
    page: () => const ProfilePage(),
    transition: Transition.rightToLeft,
  ),
  // GetPage(
  //   name: "/profilePage",
  //   page: () => const UserProfilePage(),
  //   transition: Transition.rightToLeft,
  // ),

  // GetPage(
  //   name: "/updateProfilePage",
  //   page: () => const UserUpdateProfile(),
  //   transition: Transition.rightToLeft,
  // ),
];
