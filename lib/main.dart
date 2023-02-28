// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:why/widgets/text_chat.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "The Stupid ChatBot.",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[300],
          title: Text("The Stupid ChatBot."),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TextChat("Hello there!"),
            ],
          ),
        ),
      ),
    );
  }
}
