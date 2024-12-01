import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:muac_tracker/child_info.dart';
import 'package:muac_tracker/shared_prefs.dart';


class AddChildScreen extends StatefulWidget {
  const AddChildScreen({super.key});

  @override
  _AddChildScreenState createState() => _AddChildScreenState();
}

class _AddChildScreenState extends State<AddChildScreen> {

  SharedPrefs sharedPref = SharedPrefs();

  List<ChildInfo> kidUpLoad = [];
  List<ChildInfo>  kidDownload = [];

  ChildInfo info = ChildInfo(); 

  late String _childName;
  late String _childBirthday;

  @override
  void initState() {
    super.initState();
    loadSharedPrefs();
  }

  loadSharedPrefs() async {
    try {
      String? download = sharedPref.read("kids");
      kidDownload = decodeItems(download!);


      // kidDownload = Kids.fromJson(await sharedPref.read("kids")) as Kids;

      // setState(() {

      // });
    } catch (Excepetion) {
       return null;  
    }
  }

  List<ChildInfo> decodeItems(String download) {
    final List<dynamic> jsonList = jsonDecode(download);
    return jsonList.map((json) => ChildInfo.fromJson(json)).toList();
  }


  void saveChild(){
    info.birthDate = _childBirthday;
    info.name = _childName;

    kidUpLoad.add(info); 

    List<Map<String, dynamic>> jsonList = kidUpLoad.map((info) => info.toJson()).toList();

    sharedPref.save('kids', jsonList);
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