import 'package:flutter/material.dart';

import './app.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Expenses Manager"),
            backgroundColor: Colors.purple,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {},
              )
            ],
          ),
          body: App(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
            backgroundColor: Colors.purple,
          )),
    ),
  );
}
