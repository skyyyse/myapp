import 'package:ecommerce/view/profile/settings/changes_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFe5e5e5),
      appBar: AppBar(
        title: Text("Settings"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Account Management'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.person),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Profile photo"),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_sharp),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => changes_password(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.lock_open_rounded),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("Changes Password"),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_sharp),
                          ],
                        ),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.email_outlined),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Changes Email"),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_sharp),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.perm_identity_outlined),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("The third party binding"),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_sharp),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.person_off_outlined),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Delete Account"),
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
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('More'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.chat_outlined),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Feed Back"),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_sharp),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.info_outline),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("About us"),
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
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: 16.0, vertical: 12.0),
            ),
            onPressed: () {
              // post.store(image!.path);
            },
            child: Text(
              'Logout',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          )
        ),
      ),
    );
  }
}
