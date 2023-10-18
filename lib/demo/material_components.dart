import 'package:flutter/material.dart';
import 'material_design/button_demo.dart';
import 'material_design/floating_button.dart';

class MaterialComponents extends StatelessWidget {
  const MaterialComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Components'),
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          ListViewItem('Buttons Demo', ButtonsDemo()),
          ListViewItem('Floating Button Demo', FloatingButtonDemo())
        ],
      ),
    );
  }
}

//

class ListViewItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListViewItem(this.title, this.page);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(this.title),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => this.page));
        },
      ),
    );
  }
}
