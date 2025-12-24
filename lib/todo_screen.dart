import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/provider/todo_list_screen.dart';
import '../provider/todo_provider.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController taskcontroller = TextEditingController();

    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          "Task Manager",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: taskcontroller,
                    decoration: InputDecoration(
                      hintText: "Enter Your Task",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    context.read<TodoProvider>().addTask(taskcontroller.text);
                    taskcontroller.clear();
                  },
                  child: Text("Add", style: TextStyle(color: Colors.orange)),
                ),
              ],
            ),
          ),

          // GestureDetector(
          //   onTap: (){
          //     Navigator.push(context, MaterialPageRoute(builder: (context)=>TodoListScreen()));
          //   },
          //   child: Container(
          //     height: 30,
          //     width: 50,
          //     color: Colors.orange,
          //
          //   ),
          // )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            heroTag: "update",
            backgroundColor: Colors.orange,
            onPressed: () {
              context.read<TodoProvider>().updateTask(taskcontroller.text);

              taskcontroller.clear();
            },
            child: Icon(Icons.edit),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            heroTag: "delete",
            backgroundColor: Colors.orange,
            onPressed: () {
              final provider = context.read<TodoProvider>();
              if (provider.selectedIndex == null) {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(title: Text("no task selected")),
                );
                return;
              }

              if (!provider.canDelete()) {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text("Delete Not Allowed"),
                    content: Text("Add at least 10 tasks before deleting."),
                  ),
                );
                return;
              }

              provider.deleteTask();
            },
            child: Icon(Icons.delete),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            heroTag: "List",
            backgroundColor: Colors.orange,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TodoListScreen()),
              );
            },
            child: Icon(Icons.list),
          ),
        ],
      ),
    );
  }
}
