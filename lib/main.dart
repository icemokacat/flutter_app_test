import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        body: Center(
          child: Text(
              'Hello Center',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              )
          ),
        )
      ),
    ),
  );
}