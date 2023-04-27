import 'package:flutter/material.dart';
import 'homePage.dart';

void main(){

  runApp(const ToDoApp());
}



class ToDoApp extends StatelessWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(


      home: HomePage(),













    );
  }
}



