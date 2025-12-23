//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_statemanagement/provider/count_provider.dart';
//
// import 'provider/count_provider.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<countProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Provider"),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: Center(child: Text(provider.count.toString())),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//        provider.incerment();
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_statemanagement/provider/count_provider.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<countProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Provider"),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: Center(child: Text(provider.count.toString()),
//       ),
//
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           FloatingActionButton(
//             onPressed: () {
//               provider.incerment();
//             },
//             child: Icon(Icons.add),
//           ),
//           SizedBox(width: 20),
//           FloatingActionButton(
//             onPressed: () {
//               provider.decrement();
//             },
//             child: Icon(Icons.remove),
//           ),
//         ],
//       ),
//     );
//   }
// }

//
//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_statemanagement/provider/count_provider.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<countProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Provider"),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: Column(
//         children: [
//           Text(provider.count.toString()),
//           Expanded(
//             child: ListView.builder(
//               itemCount: provider.student.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(provider.student[index]),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           FloatingActionButton(
//             onPressed: () {
//               provider.incerment();
//             },
//             child: Icon(Icons.add),
//           ),
//           SizedBox(width: 20),
//           FloatingActionButton(
//             onPressed: () {
//               provider.decrement();
//             },
//             child: Icon(Icons.remove),
//           ),
//         ],
//       ),
//     );
//   }
// }

//
// import 'package:flutter/material.dart';
//
// import 'package:provider/provider.dart';
// import 'package:provider_statemanagement/provider/count_provider.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<countProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           "Provider",
//           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//         ),
//       ),
//       body: Column(
//         children: [
//           Center(
//             child: Text(
//               provider.count.toString(),
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Text(provider.name),
//         ],
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           FloatingActionButton(
//             onPressed: () {
//               provider.increment();
//             },
//             child: Icon(Icons.add),
//           ),
//           SizedBox(width: 50,),
//           FloatingActionButton(onPressed: (){
//             provider.decrement();
//           },
//             child: Icon(Icons.remove),
//           )
//         ],
//       ),
//     );
//   }
// }

//
//
// import 'package:flutter/material.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Provider"),
//       ),
//       body: ,
//     );
//   }
// }
//
//

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/provider/count_provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Provider List",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Student name",
              ),
            ),
          ),

          // Consumer<listProvider>(
          //   builder: (context, value, child) {
          //     return ElevatedButton(
          //       style: ElevatedButton.styleFrom(
          //         backgroundColor: Colors.blue,
          //         foregroundColor: Colors.white,
          //         padding: EdgeInsets.symmetric(horizontal: 25, vertical: 14),
          //         elevation: 5,
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(10),
          //         ),
          //       ),
          //       onPressed: () {
          //         value.updateName(nameController.text);
          //         nameController.clear();
          //       },
          //       child: Text(
          //         "Add",
          //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          //       ),
          //     );
          //   },
          // ),
          SizedBox(height: 20),

          Expanded(
            child: Consumer<listProvider>(
              builder: (context, value, child) {
                return ListView.builder(
                  itemCount: value.student.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        value.student[index],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Consumer<listProvider>(
        builder: (context, value, child) {
          return Row(
            children: [
              FloatingActionButton(
                onPressed: () {
                  value.updateName(nameController.text);
                  nameController.clear();
                },
                child: Icon(Icons.add),
              ),
              SizedBox(width: 40),
              FloatingActionButton(
                onPressed: () {
                  // value.deleteStudent(value.student.isNotEmpty);
                  if (value.student.isNotEmpty) {
                    value.deleteStudent(value.student.length - 1);
                  }
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
