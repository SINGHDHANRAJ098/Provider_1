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



