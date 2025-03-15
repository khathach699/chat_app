import 'package:chat_app/Configs/Image.dart';
import 'package:chat_app/Configs/Strings.dart';
import 'package:flutter/material.dart';

class WelcomeBody extends StatefulWidget {
  const WelcomeBody({super.key});

  @override
  State<WelcomeBody> createState() => _WelcomeBodyState();
}

class _WelcomeBodyState extends State<WelcomeBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AssetImages.person1, width: 102, height: 102),
            Image.asset(
              AssetImages.connect,
              width: 32,
              height: 32,
              color: Colors.black,
            ),
            Image.asset(AssetImages.person2, width: 102, height: 102),
          ],
        ),
        SizedBox(height: 40),
        Text(
          AppString.nowYouAre,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          AppString.connected,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SizedBox(height: 30),
        Text(
          AppString.descriptionWelcome,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Text(
          AppString.description2Welcome,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ],
    );
  }
}
