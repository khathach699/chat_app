import 'package:chat_app/Configs/Image.dart';
import 'package:chat_app/UserProfiles/Widgets/TextInfo.dart';
import 'package:chat_app/Widgets/PrimaryButton.dart';
import 'package:flutter/material.dart';

class UserUpdateProfile extends StatelessWidget {
  const UserUpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Profile"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.black26,
                              ),
                              child: Center(
                                child: Image.asset(
                                  AssetImages.person1,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text("Personal Info"),
                          Divider(),
                          SizedBox(height: 15),
                          Text("Name"),
                          TextInfo(
                            text: "Enter uer name: ",
                            icon: Icons.person,
                          ),
                          SizedBox(height: 15),
                          Text("Email"),
                          TextInfo(
                            text: "Enter uer email: ",
                            icon: Icons.email,
                          ),
                          SizedBox(height: 15),
                          Text("Phone"),
                          TextInfo(
                            text: "Enter uer phone: ",
                            icon: Icons.phone,
                          ),
                          SizedBox(height: 20),
                          PrimaryButton(
                            btnName: "Save",
                            icon: Icons.save,
                            onTap: () {},
                          ),
                        ],
                      ),
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
