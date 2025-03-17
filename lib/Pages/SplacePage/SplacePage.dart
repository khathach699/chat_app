import 'package:chat_app/Configs/Image.dart';
import 'package:chat_app/Controllers/SplaceController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplacePage extends StatelessWidget {
  const SplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    SplaceController splacecontroller = Get.put(SplaceController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome to chat app Stone",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: Center(child: Image.asset(AssetImages.logoStone)),
    );
  }
}
