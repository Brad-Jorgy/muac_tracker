import 'package:flutter/material.dart';
import 'package:muac_tracker/child_info.dart';
import 'package:sqflite/sqflite.dart';



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
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter childs birthday',
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
}


// Future<void> insertChildInfo(ChildInfo childInfo) async {

//   final db = await database;

//   await db.insert(
//     'childInfos',
//     childInfo.toMap(),
//     conflictAlgorithm: ConflictAlgorithm.replace,
//   );
// }

// var kido =  ChildInfo(
//   id: 0,
//   name: 'Bob',
//   birthDate: 5/10/01,
// );

// await insertChildInfo(kido);