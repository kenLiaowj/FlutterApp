import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bruce'),
          foregroundColor: Colors.black,
          elevation: 0.0,
        ),
        body: const Center(
          child: Text(
            'Hello Flutter',
            style: TextStyle(fontSize: 18.0, color: Colors.red),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
