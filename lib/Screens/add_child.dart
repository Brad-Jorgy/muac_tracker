import 'package:flutter/material.dart';
import 'package:muac_tracker/DataBase/database_helper.dart';
import ''


final dbHelper = DatabaseHelper();

class AddChildScreen extends StatefulWidget {
  const AddChildScreen({super.key});

  @override
  _AddChildScreenState createState() => _AddChildScreenState();
}

class _AddChildScreenState extends State<AddChildScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('Add Child'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter childs name',
                controller: childInfoController,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter childs age in months',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter childs MUAC',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _insert();
                // add code here to save info
                 Navigator.pop(context);
              }, 
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }

    void _insert() async {
    // row to insert
    Map<String, dynamic> row = {
      DatabaseHelper.columnName: 'Bob',
      DatabaseHelper.columnAge: 23
    };
    final id = await dbHelper.insert(row);
    debugPrint('inserted row id: $id');
  }
}