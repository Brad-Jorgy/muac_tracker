import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart'; 


void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  final database = openDatabase(

    join(await getDatabasesPath(), 'child_info_database.db'),

      onCreate: (db, version) {
    
    return db.execute(
      'CREATE TABLE child_info(id INTEGER PRIMARY KEY, name TEXT, birthday REAL)',
    );
  },
  version: 1,

  );
}
