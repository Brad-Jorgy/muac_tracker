import 'package:flutter/foundation.dart';

class ChildInfo {
  final String name;
  final int ageInMonths;
  final int muac; 

  const ChildInfo({
    required this.name,
    required this.ageInMonths,
    required this.muac,
  });
}

class Child extends ChangeNotifier {

  List<ChildInfo> childInfo = <ChildInfo>[];

  List<ChildInfo> get items =>[...childInfo];

  void addChild(childInfo) {
   childInfo.insert(
      0,
      (
        name: childInfo.name,
        ageInMonths: childInfo.ageInMonths,
        muac: childInfo.muac,
      ),
    );
    notifyListeners();
  }
}