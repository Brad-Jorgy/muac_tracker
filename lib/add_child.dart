import 'dart:convert';
import 'package:flutter/material.dart';

class AddChildScreen extends StatefulWidget {
  const AddChildScreen({super.key});

  @override
  AddChildScreenState createState() => AddChildScreenState();
}

class AddChildScreenState extends State<AddChildScreen> {
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
              onChanged: (name) {
                setState(() {
                  _childName = name;
                });
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter childs birthday',
              ),
              onChanged: (bday) {
                setState(() {
                  _childBirthday = bday;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                // add code here to save info
              //  _saveValue();
              // setState(() {
              saveChild();
              // });
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
 



 // 1 pull in prefs and check for prefs 
 // 2 Decode prefs if needed 
 // 3 set object array to be added too
 // 4 add new 
 // 5 encode to json 
 // 6 save to shard prefs 