import 'package:chat_app/Configs/Image.dart';
import 'package:chat_app/Configs/Strings.dart';
import 'package:flutter/material.dart';

class WelcomeHeading extends StatelessWidget {
  const WelcomeHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetImages.logoStone,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ],
        ),
        Text(
          AppString.appName,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ],
    );
  }
}
