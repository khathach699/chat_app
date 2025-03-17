import 'package:chat_app/Configs/Image.dart';
import 'package:chat_app/Controllers/AuthController.dart';
import 'package:chat_app/Controllers/ProfileController.dart';
import 'package:chat_app/UserProfiles/Widgets/UserProfile.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());

    AuthController authController = Get.put(AuthController());
    return FutureBuilder(
      future: profileController.getUserDetails(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        return Scaffold(
          appBar: AppBar(
            title: Text("Profile"),
            actions: [
              IconButton(
                onPressed: () {
                  Get.toNamed("/updateProfilePage");
                },
                icon: Icon(Icons.edit),
              ),
            ],
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
                              profileController.currenUser.value.name ?? "user",
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            Text(
                              profileController.currenUser.value.email ??
                                  "email",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                UserProfile(text: 'Call', icon: Icons.call),
                                UserProfile(
                                  text: 'Video',
                                  icon: Icons.video_call,
                                ),
                                UserProfile(text: 'Chat', icon: Icons.chat),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    authController.logoutUser();
                  },
                  child: Text("Log out"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
