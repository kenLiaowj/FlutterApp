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
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: const Color.fromARGB(255, 237, 236, 236),
      margin: const EdgeInsets.only(top: 8, left: 8, right: 8),
      child: Column(
        children: [
          Image.network(posts[index].imageUrl),
          const SizedBox(
            height: 16,
          ),
          Text(
            posts[index].title,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            posts[index].author,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bruce'),
        foregroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return _listItemBuilder(context, index);
        },
      ),
    );
  }
}
