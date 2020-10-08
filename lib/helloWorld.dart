import 'package:flutter/material.dart';

//居中的hello world
class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text(
        'Hello world welcome',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
