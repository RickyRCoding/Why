// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

class BotChat extends StatelessWidget {
  final String text;

  BotChat(
    this.text,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
              side: BorderSide(
                color: Colors.black,
              ),
            ),
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(text),
            ),
          ),
        ),
      ],
    );
  }
}
