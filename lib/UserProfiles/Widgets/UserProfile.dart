import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final String text;
  final IconData icon;
  const UserProfile({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(children: [Icon(icon), SizedBox(width: 5), Text(text)]),
    );
  }
}
