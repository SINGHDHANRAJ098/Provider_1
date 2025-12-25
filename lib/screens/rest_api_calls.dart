import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RestApiCalls extends StatefulWidget {
  const RestApiCalls({super.key});

  @override
  State<RestApiCalls> createState() => _RestApiCallsState();
}

class _RestApiCallsState extends State<RestApiCalls> {
  List<dynamic> Users = [];

  void fetchUser() async {
    print("User CALLED");
    final url = "https://randomuser.me/api/?results=100";
    final uri = Uri.parse(url);
    final Response = await http.get(uri);
    final body = Response.body;
    final json = jsonDecode(body);
    setState(() {
      Users = json['results'];
    });
    print(" User COMPLETED");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          "REST API CALLS",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: Users.length,
        itemBuilder: (context, index) {
          final user = Users[index];
          final name = user['name']['first'];
          final email = user['email'];
          //final imageUrl = user['picture']['thumbnail'];
          return ListTile(
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text(name.toString()),
            subtitle: Text(email),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchUser,
        child: Icon(Icons.verified_user, color: Colors.orange),
      ),
    );
  }
}
