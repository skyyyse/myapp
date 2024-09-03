import 'package:ecommerce/view/profile/settings/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFe5e5e5),
      appBar: AppBar(
        title: Text("Profile"),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 8,right: 8),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                '',
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("Name"),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("Email"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 20),
                            child: Column(
                              children: [
                                Text('\$0.00'),
                                Text('bag'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 20),
                            child: Column(
                              children: [
                                Text('0'),
                                Text('Point'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10,right: 20),
                            child: Column(
                              children: [
                                Text('1'),
                                Text('Discound'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8,top: 8,right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Order"),
                            Icon(Icons.arrow_forward_ios_sharp),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.monetization_on_sharp),
                                Text('To Pay'),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.car_crash),
                                Text('To Receive'),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.verified_outlined),
                                Text('Complated'),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.repeat_on_sharp),
                                Text('Cancelled'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8,top: 8,right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("Referral & Rewards"),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_sharp),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.credit_card_outlined),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("My Cridit"),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_sharp),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.language),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("Language"),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_sharp),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("My Address"),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_sharp),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.favorite_border),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("My Favorite"),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_sharp),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("Friend Code"),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_sharp),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,top: 5,bottom: 30),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8,top: 8,right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.quick_contacts_mail_outlined),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("Contact us"),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_sharp),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star_border),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("Rate Shop"),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_sharp),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.info_outline),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("Terms of User"),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_sharp),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.verified_user_outlined),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("Privacy Pilicy"),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_sharp),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => settings(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.settings),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Settings"),
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios_sharp),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
