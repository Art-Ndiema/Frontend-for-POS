import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_page_ui/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      //  decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(80),
      //                   gradient: LinearGradient(
      //                       begin: Alignment.bottomLeft,
      //                       colors: [
      //                         Color.fromARGB(40, 95, 187, 139),
      //                         Color.fromARGB(255, 101, 139, 179)
      //                       ])),
    
    );
  }
}

