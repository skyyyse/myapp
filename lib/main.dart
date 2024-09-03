import 'package:ecommerce/t.dart';
import 'package:ecommerce/view/home/home.dart';
import 'package:ecommerce/view/home_page.dart';
import 'package:ecommerce/view/main/main.dart';
import 'package:ecommerce/view/profile/profile.dart';
import 'package:ecommerce/view/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(const ecommerce());
}

class ecommerce extends StatelessWidget {
  const ecommerce({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: StaggeredGridViewExample(),
    );
  }
}
