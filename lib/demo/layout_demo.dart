import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                width: 200.0,
                height: 300.0,
                child: Container(
                  alignment: Alignment(0, -0.8),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 54, 255, 1.0),
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 32,
                width: 200,
                child: Container(
                  color: Colors.green,
                ),
              ),
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(3, 54, 255, 1.0),
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                          colors: [Colors.yellow, Colors.orange])),
                  child: Icon(
                    Icons.brightness_2,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                  right: 20,
                  top: 20,
                  child: Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                    size: 20,
                  )),
              Positioned(
                  right: 40,
                  top: 40,
                  child: Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                    size: 16,
                  )),
              Positioned(
                  right: 10,
                  top: 60,
                  child: Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                    size: 18,
                  )),
              Positioned(
                  right: 80,
                  top: 120,
                  child: Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                    size: 14,
                  )),
              Positioned(
                  right: 60,
                  top: 150,
                  child: Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                    size: 16,
                  ))
            ],
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
