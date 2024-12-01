import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';


class SharedPrefs {


  read(String key) async {
    final prefs = await SharedPreferences.getInstance();
    String? stringy = prefs.getString(key);
    return stringy!; 
  }

  save(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, json.encode(value));
  }

  remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }

}



  //  void _loadPreferences() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();

  //   json.decode(prefs.getString('kids'));
  //   // setState(() {
  //   //    _kids = (prefs.getString('kids') ?? '') as List<ChildInfo>;
  //   //   // _childName = prefs.getString('childName') ?? '';
  //   //   // _childBirthday = prefs.getString('childBirthday') ?? '';
  //   // });
  // }

  // void _saveValue() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();

  //   prefs.setString('kids', json.encode(_kids)); 
  //   // prefs.setString('childName', _childName);
  //   // prefs.setString('childBirthday', _childBirthday);

  // }
