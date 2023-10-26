import 'package:flutter/material.dart';
import 'dart:async';

class BottomSheetDemo extends StatefulWidget {
  const BottomSheetDemo({super.key});

  @override
  State<BottomSheetDemo> createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  void _showBottomSheet() {
    _bottomSheetScaffoldKey.currentState?.showBottomSheet(
      (context) {
        return BottomAppBar(
          child: Container(
            height: 90.0,
            width: double.infinity,
            color: Colors.yellow,
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(Icons.pause_circle_outline),
                SizedBox(
                  width: 16,
                ),
                Text('01:30 / 03:20'),
                Expanded(
                    child: Text(
                  'Fix you - coldPlay',
                  textAlign: TextAlign.right,
                ))
              ],
            ),
          ),
        );
      },
    );
  }

  Future _showBottomModalSheet() async {
    final option = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            child: Column(children: [
              ListTile(
                title: Text('Option A'),
                onTap: () {
                  Navigator.pop(context, 'A');
                },
              ),
              ListTile(
                title: Text('Option B'),
                onTap: () {
                  Navigator.pop(context, 'B');
                },
              ),
              ListTile(
                title: Text('Option C'),
                onTap: () {
                  Navigator.pop(context, 'C');
                },
              )
            ]),
          );
        });

    debugPrint(option);
  }

  void _showSnakBar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Container(
        child: Text('Waiting....'),
      ),
      action: SnackBarAction(label: 'OK', onPressed: () {}),
      duration: Duration(seconds: 1),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('Bottom Sheet'),
        elevation: 0.0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
                child: Icon(Icons.more),
                elevation: 0.0,
                onPressed: () {
                  _showBottomSheet();
                }),
            SizedBox(
              width: 16,
            ),
            FloatingActionButton(
                child: Icon(Icons.book_online),
                elevation: 0.0,
                onPressed: () {
                  _showBottomModalSheet();
                }),
            SizedBox(
              width: 16,
            ),
            TextButton(
                onPressed: () {
                  _showSnakBar();
                },
                child: Text(
                  'Show SnakBar',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
