import 'package:flutter/material.dart';

class TextInfo extends StatelessWidget {
  final String text;
  final IconData icon;
  const TextInfo({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(hintText: text, prefixIcon: Icon(icon)),
    );
  }
}
