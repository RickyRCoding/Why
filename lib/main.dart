// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_function_literals_in_foreach_calls

import "package:flutter/material.dart";
import "package:why/widgets/text_chat.dart";
import "package:why/widgets/why_chat.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final myController = TextEditingController();
  bool show = false;
  List<Widget> chats = [];

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
              if (show)
                for (Widget i in chats) i
              else
                Center(
                  child: TextChat("Start typing!"),
                ),
              SizedBox(
                height: 100,
                width: 400,
                child: TextField(
                  controller: myController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          show = true;
                          chats.add(TextChat(myController.text));
                          chats.add(BotChat("Why."));
                          myController.clear();
                        });
                      },
                      tooltip: "Send",
                      icon: Icon(Icons.send_rounded),
                      color: Colors.amber,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
