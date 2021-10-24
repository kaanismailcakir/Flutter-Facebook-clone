import 'package:flutter/material.dart';
import 'package:list/home.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      title: 'Todo Lists',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home:HomePage(),
  
    );
  }
}