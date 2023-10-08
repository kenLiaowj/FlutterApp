import 'package:flutter/material.dart';
import 'model/post.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: const Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: const Color.fromRGBO(255, 255, 255, 0.6)),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.menu),
              tooltip: "Menu",
              onPressed: () => debugPrint('Navigation button is press'),
            ),
            title: const Text('Bruce'),
            foregroundColor: Colors.black,
            elevation: 0.0,
            bottom: const TabBar(
                unselectedLabelColor: Colors.black54,
                indicatorColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
                indicatorPadding: EdgeInsets.only(bottom: 0),
                tabs: [
                  Icon(Icons.local_florist),
                  Icon(Icons.change_history),
                  Icon(Icons.directions_bike)
                ]),
          ),
          body: const TabBarView(children: [
            Icon(
              Icons.local_florist,
              size: 128,
              color: Colors.black12,
            ),
            Icon(
              Icons.change_history,
              size: 128,
              color: Colors.black12,
            ),
            Icon(
              Icons.directions_bike,
              size: 128,
              color: Colors.black12,
            )
          ]),
          drawer: Drawer(
            width: 300,
            backgroundColor: Colors.white,
            child: ListView(
              children: [
                DrawerHeader(
                  child: Text('header'.toUpperCase()),
                  decoration: BoxDecoration(color: Colors.grey[100]),
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
          ),
        ));
  }
}
