import 'package:chat_app/Models/UserModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProfileController extends GetxController {
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;

  Rx<UserModel> currenUser = UserModel().obs;
  void onInit() async {
    super.onInit();
    await getUserDetails();
  }

  Future<void> getUserDetails() async {
    DocumentSnapshot<Map<String, dynamic>> value =
        await db
            .collection("users")
            .doc(auth.currentUser?.uid) // dùng ?. để tránh lỗi nếu uid null
            .get();

    if (value.exists && value.data() != null) {
      currenUser.value = UserModel.fromJson(value.data()!);
    } else {
      print("User document does not exist or data is null");
    }
  }
}
