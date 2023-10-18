import 'package:flutter/material.dart';

enum ButtonType {
  textButton, // 扁平按钮
  elevatedButton, // 凸起按钮
  outlinedButton, // 线框按钮
  iconButton, // 图标按钮
}

class ButtonsDemo extends StatelessWidget {
  const ButtonsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColumnItem(ButtonType.iconButton),
            ColumnItem(ButtonType.textButton),
            ColumnItem(ButtonType.elevatedButton),
            ColumnItem(ButtonType.outlinedButton),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ColumnItem(ButtonType.elevatedButton),
                SizedBox(
                  width: 20,
                ),
                ColumnItem(ButtonType.outlinedButton)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ColumnItem extends StatelessWidget {
  final ButtonType type;

  const ColumnItem(this.type, {super.key});

  Widget _createButton(ButtonType type) {
    switch (this.type) {
      case ButtonType.textButton:
        return TextButton.icon(
            style: ButtonStyle(
                iconColor: MaterialStateProperty.all(Colors.black),
                foregroundColor: MaterialStateProperty.all(Colors.black)),
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text('Add'));
      case ButtonType.elevatedButton:
        return ElevatedButton.icon(
            style: ButtonStyle(
                iconColor: MaterialStateProperty.all(Colors.red),
                foregroundColor: MaterialStateProperty.all(Colors.red),
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                elevation: MaterialStateProperty.all(5.0)),
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text('Add'));
      case ButtonType.outlinedButton:
        return OutlinedButton.icon(
            style: ButtonStyle(
                side: MaterialStateProperty.all(
                    BorderSide(width: 2.0, color: Colors.orange)),
                foregroundColor: MaterialStateProperty.all(Colors.orange),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                overlayColor: MaterialStateProperty.all(Colors.green)),
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text('Add'));
      case ButtonType.iconButton:
        return IconButton(
          iconSize: 32,
          splashColor: Colors.green[100],
          highlightColor: Colors.transparent,
          splashRadius: 32,
          onPressed: () {},
          icon: Icon(Icons.add_alarm_rounded),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [_createButton(type)],
    );
  }
}
