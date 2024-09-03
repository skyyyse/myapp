import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class MainPageScreen extends StatefulWidget {
  const MainPageScreen({super.key});

  @override
  State<MainPageScreen> createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  // String? email;
  // String? password;
  int currentPage = 0;

  // var userviewModel = UserViewModel();
  // Future getValidationData() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var emails = prefs.getString('email');
  //   var passwords = prefs.getString('password');
  //   print('email:$emails');
  //   print('pw:$passwords');
  //   setState(() {
  //     email = emails;
  //     password = passwords;
  //   });
  // }

  List pages = [
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  // @override
  // void initState() {
  //   getValidationData().whenComplete(() {
  //     userviewModel = UserViewModel();
  //     getDataUser(email, password);
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(0),
        height: size.height * 0.08,
        //margin: EdgeInsets.fromLTRB(10,20,10,0),
      ),
    );
  }
}