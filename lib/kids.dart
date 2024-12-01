// import 'dart:convert';

// import 'package:muac_tracker/child_info.dart';

// class Kids {
//   List<ChildInfo> kids = [];

//   static List<ChildInfo>? fromJson(jsonString) {

//     List<dynamic> jsonList = json.decode(jsonString);

//      try {
//         List<ChildInfo> kids = jsonList.map((json) => ChildInfo.fromJson(json)).toList();
//          return kids; 
//      } catch (Excepetion) {
//         return null;
//      } 
//   }

//   map(Function(dynamic info) param0) {}

//   void add(ChildInfo info) {}
// } 