import 'package:flutter/material.dart';
import 'package:provider_statemanagement/model/todos_model.dart';

import '../services/todos_services.dart';

class TodosProvider extends ChangeNotifier{
  final _todosApi =TodosApi();
  bool isLoading = false;
  List<TodoModel> _todos =[];
  List<TodoModel> get todos => _todos;


   Future<void> getAllTodos() async{
    isLoading = true;
    notifyListeners();

   final response  = await _todosApi.getAll();
   _todos = response;
   isLoading = false;
   notifyListeners();
   }



}