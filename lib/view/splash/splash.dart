import 'package:ecommerce/t.dart';
import 'package:ecommerce/view/login.dart';
import 'package:ecommerce/view/main/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class splash extends StatefulWidget {
  splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  var image = "https://imgs.search.brave.com/wvab_5UeHJuO8hZlDIDiTPXUpqlYfoJGqGJG9EJjeNY/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAxLzgxLzIwLzAx/LzM2MF9GXzE4MTIw/MDEzMl8xNUE1ZWVE/U0oxRWRTSU9DZlRW/NWJabENlNGxKZGtP/VS5qcGc";
  void initState() {
    next_login();
    super.initState();
  }

  void next_login() {
    Future.delayed(Duration(seconds: 5), () {
      return Get.offAll(MainPageScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(
          image: NetworkImage(image),
        ),
      ),
    );
  }
}
