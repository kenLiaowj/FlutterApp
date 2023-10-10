import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 200.0,
            height: 300.0,
            child: Container(
              alignment: Alignment(-1, -1),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
                  borderRadius: BorderRadius.circular(8)),
              child: Icon(
                Icons.ac_unit,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
                  borderRadius: BorderRadius.circular(8)),
              child: Icon(
                Icons.brightness_2,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
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
