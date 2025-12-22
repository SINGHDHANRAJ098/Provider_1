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

//
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




import 'package:flutter/foundation.dart';

class listProvider with ChangeNotifier {
  List<String> _students = [];

  List<String> get student => _students;

  void updateName(String name) {
    if (name.isNotEmpty) {
      _students.add(name);
      notifyListeners();
    }
  }
}
