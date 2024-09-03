import 'package:ecommerce/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class UserProfilePage extends StatelessWidget {
  final int userId;
  UserProfilePage({required this.userId});

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.put(UserController(userId));

    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Obx(() {
        if (userController.user.value == null) {
          return Center(child: CircularProgressIndicator());
        } else {
          final user = userController.user.value!;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name: ${user.name}', style: TextStyle(fontSize: 20)),
                SizedBox(height: 10),
                Text('Email: ${user.email}', style: TextStyle(fontSize: 20)),
              ],
            ),
          );
        }
      }),
    );
  }
}
