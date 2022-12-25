import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todoapp/screen/home.dart';


void main(){
  runApp(const TodoApp());


}
class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do App',
      home: Home(),
    );

  }
}