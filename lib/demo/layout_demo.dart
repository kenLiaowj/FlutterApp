import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        IconBadge(Icons.kayaking_sharp),
        IconBadge(
          Icons.switch_camera,
          size: 16,
        ),
        IconBadge(Icons.pool)
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {super.key, this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size + 60,
      height: size + 60,
      color: Colors.blue,
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
    );
  }
}
