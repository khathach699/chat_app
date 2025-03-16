import 'package:chat_app/Configs/Image.dart';
import 'package:chat_app/Profiles/Widgets/UserProfile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.edit))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(AssetImages.person1),
                        SizedBox(height: 10),
                        Text(
                          "My name is Stone",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text(
                          "Email: khathach699@gmail.com",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            UserProfile(text: 'Call', icon: Icons.call),
                            UserProfile(text: 'Video', icon: Icons.video_call),
                            UserProfile(text: 'Chat', icon: Icons.chat),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
