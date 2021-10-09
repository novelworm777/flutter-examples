import 'package:flutter/material.dart';

// The main function is the starting point for all our Flutter apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Text("I Am Rich"),
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
          ),
        ),
      ),
    ),
  );
}
