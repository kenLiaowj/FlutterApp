import 'package:flutter/material.dart';
import 'package:flutter_application_001/demo/post_show.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
        color: const Color.fromARGB(255, 237, 236, 236),
        margin: const EdgeInsets.only(top: 8, left: 8, right: 8),
        child: Stack(children: [
          Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  posts[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
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
          Positioned.fill(
              child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.white.withOpacity(0.3),
                    highlightColor: Colors.white.withOpacity(0.1),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PostShow(post: posts[index])));
                    },
                  ))),
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return _listItemBuilder(context, index);
        });
  }
}
