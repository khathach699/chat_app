import 'package:chat_app/Pages/HomePage/Widgets/ChatTitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Configs/Image.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ChatTitle(imageUrl: AssetImages.person1, name: 'Clock', lastChat: 'Hello!', lastTime: "10:30 AM"),
        ChatTitle(imageUrl: AssetImages.person2, name: 'Lamp', lastChat: 'How are you?', lastTime: "9:45 AM"),
        ChatTitle(imageUrl: AssetImages.person1, name: 'Bottle', lastChat: 'See you later.', lastTime: "8:20 AM"),
        ChatTitle(imageUrl: AssetImages.person2, name: 'Mouse', lastChat: 'Let’s meet at 5.', lastTime: "Yesterday"),
        ChatTitle(imageUrl: AssetImages.person1, name: 'Lap Top', lastChat: 'Check this out.', lastTime: "2 days ago"),
        ChatTitle(imageUrl: AssetImages.person2, name: 'Pen', lastChat: 'Thank you!', lastTime: "March 14"),
        ChatTitle(imageUrl: AssetImages.person1, name: 'Ruler', lastChat: 'Good night.', lastTime: "March 10"),
      ],
    );
  }
}
