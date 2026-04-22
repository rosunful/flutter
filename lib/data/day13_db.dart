import 'package:flutter/material.dart';
import 'package:flutter_day_1/data/local/db_helper.dart';

void main() {
  runApp(Day12db());
}

class Day12db extends StatelessWidget {
  const Day12db({super.key});

  @override
  Widget build(BuildContext context) {

    DbHelper db = DbHelper.getInstance;

    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text("Database"))),
    );
  }
}
