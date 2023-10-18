import 'package:flutter/material.dart';

class PopupMenuDemo extends StatefulWidget {
  const PopupMenuDemo({super.key});

  @override
  State<PopupMenuDemo> createState() => _PopupMenuDemoState();
}

class _PopupMenuDemoState extends State<PopupMenuDemo> {
  String _currentMenuItem = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup Menu Button'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_currentMenuItem),
            PopupMenuButton(
              initialValue: _currentMenuItem,
              tooltip: _currentMenuItem,
              elevation: 1.0,
              shadowColor: Colors.red,
              onSelected: (value) {
                setState(() {
                  _currentMenuItem = value;
                });
              },
              itemBuilder: (context) {
                return [
                  PopupMenuItem(value: 'Home', child: Text('Home')),
                  PopupMenuItem(value: 'Discover', child: Text('Discover')),
                  PopupMenuItem(value: 'Community', child: Text('Community'))
                ];
              },
            )
          ],
        ),
      ),
    );
  }
}
