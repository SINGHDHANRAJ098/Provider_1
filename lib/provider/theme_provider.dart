// import 'package:flutter/material.dart';
//
// class ThemeProvider extends ChangeNotifier {
//   ThemeData _theme = ThemeData.dark();
//   ThemeData get theme => _theme;
//
//
//   void toggle(){
//     final isDark = _theme == ThemeData.dark();
//     if(isDark){
//       _theme = ThemeData.light();
//     }else{
//    _theme = ThemeData.dark();
//     }
//     notifyListeners();
//   }
// }


import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDark = false;

  bool get isDark => _isDark;

  ThemeData get theme =>
      _isDark ? ThemeData.dark() : ThemeData.light();

  void toggle() {
    _isDark = !_isDark;
    notifyListeners();
  }
}
