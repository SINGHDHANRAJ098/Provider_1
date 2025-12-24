import 'package:flutter/cupertino.dart';

class TodoProvider extends ChangeNotifier {
  List<String> _todo = [];
  int? _selectedIndex;

  List<String> get todos => _todo;
  int? get selectedIndex => _selectedIndex;

  void addTask(String task) {
    if (task.isEmpty) return;
    _todo.add(task);
    notifyListeners();
  }

  void selectTask(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void updateTask(String newTask) {
    if (_selectedIndex == null) return;
    _todo[_selectedIndex!] = newTask;
    notifyListeners();
  }

  bool canDelete() => _todo.length >= 10;

  void deleteTask() {
    if (_selectedIndex == null) return;
    _todo.removeAt(_selectedIndex!);

    _selectedIndex = null;
    notifyListeners();
  }
}
