import 'package:flutter/material.dart';
import 'package:openai_dalle_wrapper/openai_dalle_wrapper.dart';
import 'secondpage.dart';
import 'firstpage.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}
