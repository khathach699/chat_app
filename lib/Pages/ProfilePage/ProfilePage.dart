import 'package:chat_app/Configs/Image.dart';
import 'package:chat_app/Controllers/ProfileController.dart';
import 'package:chat_app/Widgets/PrimaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isEdit = false.obs;
    ProfileController profileController = Get.put(ProfileController());
    TextEditingController name = TextEditingController(
      text: profileController.currenUser.value.name,
    );
    TextEditingController email = TextEditingController(
      text: profileController.currenUser.value.email,
    );
    TextEditingController phone = TextEditingController(
      text: profileController.currenUser.value.phoneNumber ?? "***",
    );
    TextEditingController about = TextEditingController(
      text: profileController.currenUser.value.about ?? "I am khathachDev",
    );

    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black26,
                              child: Image.asset(AssetImages.person1),
                              radius: 80,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Obx(
                          () => TextField(
                            controller: name,
                            enabled: isEdit.value,
                            decoration: InputDecoration(
                              filled: isEdit.value,
                              labelText: "Name",
                              hintText: "Name",
                              prefixIcon: Icon(Icons.person),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Obx(
                          () => TextField(
                            controller: email,
                            enabled: isEdit.value,
                            decoration: InputDecoration(
                              filled: isEdit.value,
                              labelText: "Email",
                              hintText: "Email",
                              prefixIcon: Icon(Icons.email),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Obx(
                          () => TextField(
                            controller: phone,
                            enabled: isEdit.value,
                            decoration: InputDecoration(
                              filled: isEdit.value,
                              labelText: "Phone",
                              hintText: "Phone",
                              prefixIcon: Icon(Icons.phone),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Obx(
                          () => TextField(
                            controller: about,
                            enabled: isEdit.value,
                            decoration: InputDecoration(
                              filled: isEdit.value,
                              labelText: "About",
                              hintText: "About",
                              prefixIcon: Icon(Icons.contact_emergency),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Obx(
                          () => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              isEdit.value
                                  ? PrimaryButton(
                                    btnName: "Save",
                                    icon: Icons.save,
                                    onTap: () {
                                      isEdit.value = false;
                                    },
                                  )
                                  : PrimaryButton(
                                    btnName: "Edit",
                                    icon: Icons.edit,
                                    onTap: () {
                                      isEdit.value = true;
                                    },
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
          ],
        ),
      ),
    );
  }
}
