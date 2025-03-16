import 'package:chat_app/Controllers/AuthController.dart';
import 'package:chat_app/Widgets/PrimaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    TextEditingController email = TextEditingController();
    TextEditingController name = TextEditingController();
    TextEditingController password = TextEditingController();
    return Column(
      children: [
        Column(
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.alternate_email_rounded),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: name,
              decoration: InputDecoration(
                hintText: "Name",
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: password,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.password_outlined),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(height: 30),
            Obx(
              () =>
                  authController.isLoading.value
                      ? CircularProgressIndicator()
                      : PrimaryButton(
                        onTap: () {
                          authController.createUser(email.text, password.text);
                        },
                        btnName: "Sign In",
                        icon: Icons.lock_open_outlined,
                      ),
            ),
          ],
        ),
      ],
    );
  }
}
