import 'package:flutter/material.dart';
import 'package:provider_statemanagement/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ToggleScreen extends StatelessWidget {
  const ToggleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          "Theme Switch",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          provider.toggle();
        }, child: Text("Toggle")),
      ),
    );
  }
}
