import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Configs/Image.dart';

class Chatbubble extends StatelessWidget {
  final String message;
  final bool isComming;
  final String time;
  final String Status;
  final String imageUrl;
  const Chatbubble({super.key, required this.message, required this.isComming, required this.time, required this.Status, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
          crossAxisAlignment: isComming ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              constraints: BoxConstraints(
                maxWidth: MediaQuery.sizeOf(context).width / 1.3,
              ),
              decoration: BoxDecoration(
                borderRadius: isComming ?  BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(10),
                ):BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )
                ,
                color: Colors.black26,
              ),
              child: imageUrl == "" ? Text(message) : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(imageUrl),
                  ),
                  SizedBox(height: 5,),
                  Text(message)
                ],
              ),
            ),
            SizedBox(height: 10,),
            isComming ? Text(time) : Row(
              mainAxisAlignment: isComming ? MainAxisAlignment.start : MainAxisAlignment.end,
              children: [
                Text(time),
                SizedBox(width: 5,),
                Image.asset(AssetImages.vector, color: Colors.black, width: 15, height: 15,)
              ],
            )
          ]
      ),
    );
  }
}
