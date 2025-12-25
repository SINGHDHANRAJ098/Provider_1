import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/provider/todos_provider.dart';

class TodosApiScreen extends StatefulWidget {
  const TodosApiScreen({super.key});

  @override
  State<TodosApiScreen> createState() => _TodosApiScreenState();
}

class _TodosApiScreenState extends State<TodosApiScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<TodosProvider>(context, listen: false).getAllTodos();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text(
          "Provider & Api",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: Consumer<TodosProvider>(
        builder: (context, value, child) {
          if (value.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          final todos = value.todos;
          return ListView.builder(
            itemCount: value.todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              return ListTile(
                title: Text(
                  todo.title,
                  style: TextStyle(
                    color: todo.completed ? Colors.orange : Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                leading: CircleAvatar(child: Text(todo.id.toString())),
              );
            },
          );
        },
      ),
    );
  }
}
