import 'package:chat_app/Configs/Colors.dart';
import 'package:chat_app/Configs/Image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/ChatBubble.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(AssetImages.person1),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Clock", style: Theme.of(context).textTheme.headlineSmall),
            Text("Online", style: Theme.of(context).textTheme.labelMedium),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black12
        ),
        child: Row(
          children: [
            SizedBox(
              width: 30,
              height: 30,
              child:   Image.asset(AssetImages.mirco, width: 25),
            ),
            SizedBox(width: 10,),
            Expanded(child: TextField(
              decoration: InputDecoration(
                filled: false,
                hintText: "Type messages ....",


              ),
            )),
            SizedBox(width: 10,),
            SizedBox(
              width: 30,
              height: 30,
              child:   Image.asset(AssetImages.image, width: 25),
            ),
           SizedBox(width: 10,),
           SizedBox(
             width: 30,
             height: 30,
             child:  Image.asset(AssetImages.send, width: 25,),
           )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Chatbubble(message: 'Hello How are you ', isComming: true, time: '10:10 Am', Status: '', imageUrl: 'https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D',),
              Chatbubble(message: 'Im fine thanks', isComming: false, time: '11:45 PM', Status: '', imageUrl: 'https://gratisography.com/wp-content/uploads/2025/01/gratisography-dog-vacation-800x525.jpg',),
              Chatbubble(message: 'Hello How are you ', isComming: true, time: '10:10 Am', Status: '', imageUrl: '',),
              Chatbubble(message: 'Im fine thanks', isComming: false, time: '11:45 PM', Status: '', imageUrl: '',),
              Chatbubble(message: 'Hello How are you ', isComming: false, time: '10:10 Am', Status: '', imageUrl: '',),
              Chatbubble(message: 'Im fine thanks', isComming: false, time: '11:45 PM', Status: '', imageUrl: '',),
            ],
          ),
        ),
      ),
    );
  }
}
