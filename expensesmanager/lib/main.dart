import 'package:flutter/material.dart';

import './app.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expenses Manager"),
          backgroundColor: Colors.purple,
        ),
        body: App(),
      ),
    ),
  );
}