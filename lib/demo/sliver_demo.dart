import 'package:flutter/material.dart';
import 'package:flutter_application_001/model/post.dart';

class SliverDemo extends StatelessWidget {
  const SliverDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          expandedHeight: 178.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              'Bruce Flutter'.toUpperCase(),
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3),
            ),
            background: Image.network(
              'https://img2.baidu.com/it/u=2257799194,2566047008&fm=253&fmt=auto&app=120&f=JPEG?w=1200&h=800',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(8.0),
          sliver: SliverListDemo(),
        )
      ],
    ));
  }
}

class SliverListDemo extends StatelessWidget {
  const SliverListDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 32),
          child: Material(
            type: MaterialType.card,
            borderRadius: BorderRadius.circular(12.0),
            clipBehavior: Clip.hardEdge,
            elevation: 14.0,
            shadowColor: Colors.grey.withOpacity(0.5),
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    posts[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    top: 32,
                    left: 32,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          posts[index].title,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          posts[index].title,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        )
                      ],
                    ))
              ],
            ),
          ),
        );
      }, childCount: posts.length),
    );
  }
}

class SliverSafeAreaDemo extends StatelessWidget {
  const SliverSafeAreaDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverSafeArea(sliver: SliverGridDemo());
  }
}

class SliverGridDemo extends StatelessWidget {
  const SliverGridDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        delegate: SliverChildBuilderDelegate((context, index) {
          return Image.network(posts[index].imageUrl);
        }, childCount: posts.length),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8));
  }
}
