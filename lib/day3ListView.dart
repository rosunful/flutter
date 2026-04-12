import 'package:flutter/material.dart';

void main() {
  runApp(ListViewExplore());
}

class ListViewExplore extends StatelessWidget {
  const ListViewExplore({super.key});

  @override
  Widget build(BuildContext context) {
    
    var arrName = ["hari", "sari", "shyam", "ninja", "hattori", "sinjo"];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Text(arrName[index]);
          },
          itemCount: arrName.length,
        ),
      ),
    );
  }
}
