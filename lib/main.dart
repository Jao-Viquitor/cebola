import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         ElevatedButton(style: ElevatedButton.styleFrom(
           primary: Color.fromRGBO(40, 31, 64, 100),
           onPrimary: Color.fromRGBO(234, 275, 200, 100)
         ),
             onPressed: onPressed, child: Text("Sou examinadora", style: TextStyle(color: Colors.white, fontSize: 20)))
        ],
    );

  void onPressed() {
  }
}