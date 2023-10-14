import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  const ViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  const GridViewBuilderDemo({super.key});

  Widget _createItems(BuildContext context, int index) {
    return Container(
        color: Colors.red[300],
        alignment: Alignment.center,
        child: Stack(
          children: [
            Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            Positioned(
                bottom: 8,
                left: 8,
                child: Text(
                  posts[index].author,
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: posts.length,
      itemBuilder: _createItems,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
    );
  }
}

class GridViewExtendDemo extends StatelessWidget {
  const GridViewExtendDemo({super.key});

  List<Widget> _createItems(int length) {
    return List.generate(length, (index) {
      return Container(
          color: Colors.grey[300],
          alignment: Alignment.center,
          child: Text('Item-$index'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150.0, // 交叉轴上项目的最大尺寸
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      childAspectRatio: 1.0,
      controller: ScrollController(initialScrollOffset: 100.0),
      padding: EdgeInsets.all(8),
      children: _createItems(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  const GridViewCountDemo({super.key});

  List<Widget> _createItems(int length) {
    return List.generate(length, (index) {
      return Container(
          color: Colors.grey[300],
          alignment: Alignment.center,
          child: Text('Item-$index'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      crossAxisCount: 3,
      childAspectRatio: 1.0,
      controller: ScrollController(initialScrollOffset: 100.0),
      padding: EdgeInsets.all(8),
      children: _createItems(100),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  const PageViewBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _itemBuilder(BuildContext context, int index) {
      return Stack(
        children: [
          SizedBox.expand(
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              left: 8,
              bottom: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    posts[index].title,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    posts[index].author,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ))
        ],
      );
    }

    return PageView.builder(itemCount: posts.length, itemBuilder: _itemBuilder);
  }
}

class PageViewDemo extends StatelessWidget {
  const PageViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      reverse: true,
      pageSnapping: true,
      controller: PageController(
          initialPage: 1, keepPage: false, viewportFraction: 0.85),
      onPageChanged: (value) {
        print('当前索引: $value');
      },
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.red,
          child: const Text(
            'One',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: const Text(
            'Two',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text(
            'Three',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        )
      ],
    );
  }
}
