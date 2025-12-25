// import 'dart:convert';
//
// import 'package:provider_statemanagement/model/todos_model.dart';
// import 'package:http/http.dart' as http;
//
// class todosApi {
//   Future<List<TodoModel>> getAll() async {
//     const url = "https://jsonplaceholder.typicode.com/todos";
//     final uri = Uri.parse(url);
//     final response = await http.get(uri);
//     if (response.statusCode == 200) {
//       final json = jsonDecode(response.body) as List;
//       final TodoModel = json.map((e) {
//         return TodoModel(
//           id: e['id'],
//           userId: e['userId'],
//           title: e['title'],
//           completed: e['completed'],
//         );
//       }).toList();
//       return TodoModel;
//     }
//     throw "something is wrong";
//   }
// }

import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/todos_model.dart';

class TodosApi {
  Future<List<TodoModel>> getAll() async {
    const url = "https://jsonplaceholder.typicode.com/todos";
    final uri = Uri.parse(url);

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);

      return data.map((e) => TodoModel.fromJson(e)).toList();
    }

    throw Exception("Something went wrong while fetching todos");
  }
}
