import 'package:chat_app/Widgets/PrimaryButton.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.alternate_email_rounded),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.password_outlined),
              ),
            ),
            SizedBox(height: 30),
            PrimaryButton(btnName: "Login", icon: Icons.lock_open_outlined),
          ],
        ),
      ],
    );
  }
}
