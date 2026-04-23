import 'package:flutter/material.dart';
import 'package:flutter_day_1/data/local_two/db_helper_two.dart';

void main() {
  runApp(Day14db());
}

class Day14db extends StatelessWidget {
  const Day14db({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DatabaseCultural());
  }
}

class DatabaseCultural extends StatelessWidget {
  const DatabaseCultural({super.key});

  @override
  Widget build(BuildContext context) {
    DbHelperTwo db = DbHelperTwo.instance;

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, title: Text("Database")),
      body: Container(),
    );
  }
}
