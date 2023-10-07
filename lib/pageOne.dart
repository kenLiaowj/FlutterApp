import 'package:flutter/material.dart';

class pageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '第一个APP',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wlecome to Flutter'),
        ),
        body: Center(
          child: Text('Hello world!'),
        ),
      ),
    );
  }
}
