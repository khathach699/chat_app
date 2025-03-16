import 'package:chat_app/Controllers/AuthController.dart';
import 'package:chat_app/Widgets/PrimaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    AuthController authController = Get.put(AuthController());
    return Column(
      children: [
        Column(
          children: [
            TextField(
              controller: email,
              decoration: const InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.alternate_email_rounded),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: password,
              decoration: const InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.password_outlined),
              ),
            ),
            SizedBox(height: 30),
            authController.isLoading.value
                ? CircularProgressIndicator()
                : PrimaryButton(
                  onTap: () {
                    authController.login(email.text, password.text);
                  },
                  btnName: "Login",
                  icon: Icons.lock_open_outlined,
                ),
          ],
        ),
      ],
    );
  }
}
