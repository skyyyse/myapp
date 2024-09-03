import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Star Rating Example'),
        ),
        body: Center(
          child: StarRating(a: 2),
        ),
      ),
    );
  }
}

class StarRating extends StatelessWidget {
  final int a;

  StarRating({required this.a});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          Icons.star,
          color: (index < a) ? Colors.blue : Colors.black,
          size: 30.0,
        );
      }),
    );
  }
}
