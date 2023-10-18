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
          children: [ColumnItem(ButtonType.iconButton)],
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
        return IconButton(
            onPressed: () {}, icon: Icon(Icons.add_alarm_rounded));
      case ButtonType.elevatedButton:
        return Container();
      case ButtonType.outlinedButton:
        return Container();
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
