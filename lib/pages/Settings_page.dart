import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings"),
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
        
      }, icon: Icon(Icons.keyboard_backspace)),
      ),
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Text("Welcome to the application settings page.",
              style: TextStyle(color: Colors.black,
              fontSize: 25,
                fontWeight: FontWeight.bold,


              ),

            ),
          )
        ],
      ),
    );
  }
}
