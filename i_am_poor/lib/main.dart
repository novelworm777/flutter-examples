import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: const Text('I Am Poor'),
        ),
        body: const Center(
          child: Image(
            // Coal icon by Icons8
            image: AssetImage('images/icons8-coal-100.png'),
          ),
        ),
      ),
    ),
  );
}
