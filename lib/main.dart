import 'package:flutter/material.dart';
import 'package:portfolio_and_resume/hidden_drawer.dart';
import 'package:portfolio_and_resume/info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HiddenDrawer(),
      theme: ThemeData(primarySwatch: Colors.cyan),
    );
  }
}
