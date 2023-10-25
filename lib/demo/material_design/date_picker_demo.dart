import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class DatePickerDemo extends StatefulWidget {
  const DatePickerDemo({super.key});

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime _selectedDate = DateTime.now();

  void _selectDate() async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (date == null) {
      return;
    }
    setState(() {
      _selectedDate = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DatePicker'),
        elevation: 0.0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(DateFormat.yMMMMd().format(_selectedDate)),
            IconButton.outlined(
                onPressed: () {
                  _selectDate();
                },
                icon: Icon(Icons.arrow_drop_down))
          ],
        ),
      ),
    );
  }
}
