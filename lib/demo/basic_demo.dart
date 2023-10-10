import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  const BasicDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContainerDemo();
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://img1.baidu.com/it/u=3296071290,2119305969&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1696957200&t=ef21a3b3854c4160a52495e9d47f5fdc'),
              fit: BoxFit.cover)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                    color: Colors.blue, width: 2, style: BorderStyle.solid),
                // borderRadius: BorderRadius.all(Radius.circular(20)),
                shape: BoxShape.circle,
                gradient: const LinearGradient(
                    colors: [Colors.yellow, Colors.greenAccent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: const Icon(
              Icons.near_me,
              color: Colors.orange,
            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  const RichTextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: const TextSpan(
            text: 'Bruce',
            style: TextStyle(fontSize: 30, color: Colors.pinkAccent),
            children: [
          TextSpan(
              text: ' is good man',
              style: TextStyle(color: Colors.green, fontSize: 15))
        ]));
  }
}
