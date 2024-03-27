import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nien_luan_2/controllers/profile-controller.dart';
import 'package:nien_luan_2/utils/utils.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController profileController = Get.put(ProfileController());
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Text("Profile"),
          ElevatedButton(
              onPressed: () async {
                print("object");

                DatabaseReference ref =
                    FirebaseDatabase.instance.ref("users/123456");

                await ref.set({
                  "name": "John",
                  "age": 18,
                  "address": {"line1": "100 Mountain View"}
                }).catchError((onError) {
                  print(onError.toString());
                }).then((value) {
                  showSnackbar(
                      message: "message", style: SnackBarStyle.success);
                });
              },
              child: Text("Add profile"))
        ],
      )),
    );
  }
}
