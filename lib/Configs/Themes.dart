import 'package:chat_app/Configs/Colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
    primary: dPrimaryColor,
    onPrimary: dOnBackgroundColor,
    background: dBackgroundColor,
    onBackground: dOnBackgroundColor,
    primaryContainer: dContainerColor,
    onPrimaryContainer: dOnContainerColor,
  ),

  inputDecorationTheme: InputDecorationTheme(
    fillColor: dOnBackgroundColor,
    filled: true,
  ),

  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontSize: 32,
      color: primaryColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w800,
    ),

    headlineMedium: TextStyle(
      fontSize: 30,
      color: primaryColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w600,
    ),

    headlineSmall: TextStyle(
      fontSize: 20,
      color: primaryColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w600,
    ),

    labelLarge: TextStyle(
      fontSize: 15,
      color: subtitleColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w400,
    ),

    labelMedium: TextStyle(
      fontSize: 12,
      color: subtitleColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w400,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      color: subtitleColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w300,
    ),
    bodyLarge: TextStyle(
      fontSize: 18,
      color: primaryColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w500,
    ),

    bodyMedium: TextStyle(
      fontSize: 15,
      color: primaryColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w500,
    ),
  ),
);

var darktheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    primary: dPrimaryColor,
    onPrimary: dOnBackgroundColor,
    background: dBackgroundColor,
    onBackground: dOnBackgroundColor,
    primaryContainer: dContainerColor,
    onPrimaryContainer: dOnContainerColor,
  ),

  inputDecorationTheme: InputDecorationTheme(
    fillColor: dBackgroundColor,
    filled: true,
  ),

  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontSize: 32,
      color: dPrimaryColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w800,
    ),

    headlineMedium: TextStyle(
      fontSize: 30,
      color: dOnBackgroundColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w600,
    ),

    headlineSmall: TextStyle(
      fontSize: 20,
      color: dOnBackgroundColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w600,
    ),

    labelLarge: TextStyle(
      fontSize: 15,
      color: dContainerColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w400,
    ),

    labelMedium: TextStyle(
      fontSize: 12,
      color: dContainerColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w400,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      color: dContainerColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w300,
    ),
    bodyLarge: TextStyle(
      fontSize: 18,
      color: dContainerColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w500,
    ),

    bodyMedium: TextStyle(
      fontSize: 15,
      color: dContainerColor,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w500,
    ),
  ),
);
