/// practice provider with simple program

// import 'package:flutter/foundation.dart';
//
// class countProvider with ChangeNotifier {
//   int _count = 0;
//   List<String> _student = ["dhanraj", "jitu", "kp", "omi", "brixCode"];
//
//   int get count => _count;
//   List<String> get student => _student;
//
//   void incerment() {
//     _count += 5;
//     notifyListeners();
//   }
//
//   void decrement() {
//     if (_count > 0) {
//       _count -= 5;
//       notifyListeners();
//     }
//   }
//
// }
//



///increment and decrment in provider

//
// import 'package:flutter/foundation.dart';
//
// class countProvider with ChangeNotifier {
//   int _count = 0;
//   String _name = "dhanraj";
//
//   int get count => _count;
//   String get name => _name;
//
//   void increment(){
//     _count++;
//     notifyListeners();
//   }
//
//   void decrement(){
//     if (_count>0)
//       _count--;
//     notifyListeners();
//   }
//
// }

///  Add any name in the list and remove it

import 'package:flutter/foundation.dart';

class listProvider with ChangeNotifier {
  final List<String> _students = [];

  List<String> get student => _students;

  bool updateName(String name) {
    if (name.isEmpty) return true;

    if (_students.length >= 10) return false;

    _students.add(name);
    notifyListeners();
    return true;
  }

  void deleteStudent(int index) {
    _students.removeAt(index);
    notifyListeners();
  }
}
