import 'package:chat_app/Configs/Image.dart';
import 'package:chat_app/Configs/Strings.dart';
import 'package:chat_app/Pages/Welcome/Widgets/WelcomeBody.dart';
import 'package:chat_app/Pages/Welcome/Widgets/WelcomeHeading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:slide_to_act/slide_to_act.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WelcomeHeading(),
              WelcomeBody(),
              SlideAction(
                onSubmit: () {
                  Get.offAllNamed("/authPage");
                },
                outerColor: Colors.black,
                text: AppString.WelcomeSlideStart,textStyle: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
