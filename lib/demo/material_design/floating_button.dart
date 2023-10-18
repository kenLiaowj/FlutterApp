import 'package:flutter/material.dart';

class FloatingButtonDemo extends StatelessWidget {
  const FloatingButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floating Button'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.center,
        child: PopupMenuButton(
          elevation: 1.0,
          shadowColor: Colors.red,
          itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text('Home')),
              PopupMenuItem(child: Text('Home')),
              PopupMenuItem(child: Text('Home'))
            ];
          },
        ),
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
