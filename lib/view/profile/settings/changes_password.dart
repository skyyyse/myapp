import 'package:flutter/material.dart';

class changes_password extends StatelessWidget {
  const changes_password({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Changes Password",style: TextStyle(fontSize: 25),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
