import 'package:flutter/material.dart';
import 'model/post.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar.dart';
import 'demo/listView_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
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
        length: 4,
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
                  Icon(Icons.directions_bike),
                  Icon(Icons.pages_rounded),
                ]),
          ),
          body: const TabBarView(children: [
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            SliverDemo()
          ]),
          drawer: const DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}
