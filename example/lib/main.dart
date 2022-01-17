import 'package:dropdown_date_picker/dropdown_date_picker.dart';
import 'package:flutter/material.dart';

void main() => runApp(Example());

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();

  static final now = DateTime.now();

  final dropdownDatePicker = DropdownDatePicker(
    firstDate: ValidDate(year: now.year - 100, month: 1, day: 1),
    lastDate: ValidDate(year: now.year, month: now.month, day: now.day),
    textStyle: TextStyle(fontWeight: FontWeight.bold),
    dropdownColor: Colors.blue[200],
    dateHint: DateHint(year: 'year', month: 'month', day: 'day'),
    ascending: false,
  );
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DropdownDatePicker example'),
        ),
        body: Material(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  widget.dropdownDatePicker,
                  RaisedButton(
                    onPressed: () => setState(
                      () => (debugPrint('Rebuild UI.')),
                    ),
                    child: const Text('Print current date.'),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Current date: ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.dropdownDatePicker.getDate('/'),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Current date: ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.dropdownDatePicker.getDate(),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
