import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  const RadioDemo({super.key});

  @override
  State<RadioDemo> createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroupA = 0;

  void _onChangeValue(int? value) {
    setState(() {
      _radioGroupA = value ?? 0;
    });
  }

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
            RadioListTile(
                title: Text('Group A'),
                subtitle: Text('Subtitle of Group A'),
                secondary: Icon(Icons.filter_1),
                value: 0,
                groupValue: _radioGroupA,
                activeColor: Colors.green,
                selected: _radioGroupA == 0,
                selectedTileColor: Colors.red,
                onChanged: _onChangeValue),
            RadioListTile(
                title: Text('Group B'),
                subtitle: Text('Subtitle of Group B'),
                secondary: Icon(Icons.filter_1),
                value: 1,
                groupValue: _radioGroupA,
                activeColor: Colors.green,
                selected: _radioGroupA == 1,
                selectedTileColor: Colors.red,
                onChanged: _onChangeValue)
          ],
        ),
      ),
    );
  }
}
