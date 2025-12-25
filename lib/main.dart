import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/provider/theme_provider.dart';
import 'package:provider_statemanagement/provider/todo_provider.dart';
import 'package:provider_statemanagement/provider/todos_provider.dart';
import 'package:provider_statemanagement/provider/toggle_screen.dart';
import 'package:provider_statemanagement/screens/rest_api_calls.dart';
import 'package:provider_statemanagement/screens/todos_api_screen.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TodoProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_)=> TodosProvider())
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, provider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: provider.theme,
          home: RestApiCalls(),
        );
      },
    );
  }
}
