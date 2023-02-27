// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

class TextChat extends StatelessWidget {
  final String text;

  TextChat(
    this.text,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          elevation: 5,
          color: Colors.purple[50],
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(text),
          ),
        ),
      ],
    );
  }
}
