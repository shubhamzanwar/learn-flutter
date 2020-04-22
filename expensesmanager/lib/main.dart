import 'package:flutter/material.dart';

import './app.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.orange,
      ),
      home: App(),
    ),
  );
}
