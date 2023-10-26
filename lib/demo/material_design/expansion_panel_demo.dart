import 'package:flutter/material.dart';

class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool _isExpaned;

  ExpansionPanelItem(this.headerText, this.body, this._isExpaned);
}

class ExpansionPanelDemo extends StatefulWidget {
  const ExpansionPanelDemo({super.key});

  @override
  State<ExpansionPanelDemo> createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  List<ExpansionPanelItem> _expansionPanelItems = [];

  @override
  void initState() {
    super.initState();

    _expansionPanelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
          'Plan A',
          Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Text('Content of Panel A'),
          ),
          false),
      ExpansionPanelItem(
          'Plan B',
          Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Text('Content of Panel B'),
          ),
          false),
      ExpansionPanelItem(
          'Plan C',
          Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Text('Content of Panel C'),
          ),
          false)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Panel'),
        elevation: 0.0,
      ),
      body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ExpansionPanelList(
                  expansionCallback: (panelIndex, isExpanded) {
                    setState(() {
                      _expansionPanelItems[panelIndex]._isExpaned = !isExpanded;
                    });
                  },
                  children: _expansionPanelItems
                      .map((e) => ExpansionPanel(
                          headerBuilder: (context, isExpanded) {
                            return Container(
                              padding: EdgeInsets.all(16),
                              width: double.infinity,
                              child: Text(e.headerText),
                            );
                          },
                          body: e.body,
                          isExpanded: e._isExpaned))
                      .toList()),
            ],
          )),
    );
  }
}
