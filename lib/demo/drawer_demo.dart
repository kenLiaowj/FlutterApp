import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Bruce',
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: const Text('1216884754@qq.com',
                style: TextStyle(color: Colors.white)),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://img1.baidu.com/it/u=3769290036,1915825487&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1696957200&t=63c805e772d4a8af4340ce5f11513a38'),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    image: const NetworkImage(
                        'https://img1.baidu.com/it/u=3296071290,2119305969&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1696957200&t=ef21a3b3854c4160a52495e9d47f5fdc'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.yellow[400]!.withOpacity(0.6),
                        BlendMode.darken))),
          ),
          ListTile(
            title: const Text(
              'Messages',
              textAlign: TextAlign.right,
            ),
            trailing: const Icon(
              Icons.message,
              size: 22,
              color: Color.fromARGB(255, 225, 225, 225),
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text(
              'History',
              textAlign: TextAlign.right,
            ),
            trailing: const Icon(
              Icons.history,
              size: 22,
              color: Color.fromARGB(255, 225, 225, 225),
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: const Text(
              'Settings',
              textAlign: TextAlign.right,
            ),
            trailing: const Icon(
              Icons.settings,
              size: 22,
              color: Color.fromARGB(255, 225, 225, 225),
            ),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
