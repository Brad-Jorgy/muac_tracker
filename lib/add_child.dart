import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



class AddChildScreen extends StatefulWidget {
  const AddChildScreen({super.key});

  @override
  _AddChildScreenState createState() => _AddChildScreenState();
}

class _AddChildScreenState extends State<AddChildScreen> {

  late String _childName;
  late String _childBirthday;

  @override
  void initState() {
    super.initState();
    _loadPreferences();
  }

    void _loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _childName = prefs.getString('childName') ?? '';
      _childBirthday = prefs.getString('childBirthday') ?? '';
    });
  }

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
                _saveValue();
                 Navigator.pop(context);
              }, 
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
    void _saveValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('childName', _childName);
    prefs.setString('childBirthday', _childBirthday);
  }
}
