import 'package:flutter/material.dart';

class FloatingButtonDemo extends StatelessWidget {
  String _currentMenuItem = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floating Button'),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0.0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        foregroundColor: Colors.white,
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: Colors.yellow,
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
