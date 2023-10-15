import 'package:flutter/material.dart';
import '../model/post.dart';

class PostShow extends StatelessWidget {
  final Post post;

  PostShow({required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.post.title),
      ),
      body: Column(
        children: [
          Image.network(post.imageUrl),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(32),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                post.title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                post.author,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                post.description,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ]),
          )
        ],
      ),
    );
  }
}
