import 'package:flutter/material.dart';
import 'package:flutter_application_001/demo/material_design/checkbox_demo.dart';
import 'package:flutter_application_001/demo/material_design/popup_menu.dart';
import 'package:flutter_application_001/demo/material_design/ratio_demo.dart';
import 'material_design/button_demo.dart';
import 'material_design/floating_button.dart';
import 'material_design/date_picker_demo.dart';
import 'material_design/bottom_sheet_demo.dart';
import 'material_design/expansion_panel_demo.dart';

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
          ListViewItem('Floating Button Demo', FloatingButtonDemo()),
          ListViewItem('Popup Menu Demo', PopupMenuDemo()),
          ListViewItem('Checkbox Demo', CheckBoxDemo()),
          ListViewItem('Radio Demo', RadioDemo()),
          ListViewItem('DatePicker Demo', DatePickerDemo()),
          ListViewItem('BottomSheet Demo', BottomSheetDemo()),
          ListViewItem('ExpansionPanel Demo', ExpansionPanelDemo()),
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
