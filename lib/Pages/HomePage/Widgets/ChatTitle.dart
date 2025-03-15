import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Configs/Image.dart';

class ChatTitle extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String lastChat;
  final String lastTime;
  const ChatTitle({super.key, required this.imageUrl, required this.name, required this.lastChat, required this.lastTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black26
      ),
      child:

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(imageUrl, width: 70),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: Theme.of(context).textTheme.headlineSmall, ),
                  SizedBox(height: 5,),
                  Text(lastChat, style: Theme.of(context).textTheme.labelLarge,),
                ],
              ),

            ],
          ),
          Text(lastTime, style: Theme.of(context).textTheme.bodySmall,)
        ],
      ),);
  }
}
