import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  const CheckBoxDemo({super.key});

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              title: Text('Item A'),
              subtitle: Text('Subtitle of Item A'),
              activeColor: Colors.green,
              secondary: Icon(Icons.filter_1),
              value: _isSelected,
              selected: _isSelected,
              onChanged: (value) {
                setState(() {
                  _isSelected = value ?? false;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
