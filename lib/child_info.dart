import 'package:flutter/material.dart';

class ChildInfo {
  late String name;
  late String birthDate; 

 ChildInfo();

  ChildInfo.fromJson(Map<String, dynamic> json) 
     : name = json['name'],
       birthDate = json['birthDate'];

    Map<String, dynamic> toJson() => {
      'name': name,
      'birthDate': birthDate,
    };

  @override
  String toString() {
    return 'ChildInfo{id: $id, name: $name, birthDate: $birthDate}';
  }
}