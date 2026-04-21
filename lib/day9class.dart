import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Day9class());
}

class Day9class extends StatelessWidget {
  const Day9class({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Messenger")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(children: [RowPart(), ColumnPart()]),
            ],
          ),
        ),
      ),
    );
  }
}

class RowPart extends StatelessWidget {
  const RowPart({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black87,
            width: 1.2,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignCenter,
          ),
        ),

        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Added Padding so avatars don't touch
              for (int i = 0; i < 10; i++)
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  
                  child: CircleAvatar(radius: 30, backgroundColor: Colors.green[200]),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColumnPart extends StatelessWidget {
  const ColumnPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8),
        Container(width: double.infinity, height: 100, color: Colors.green),
        SizedBox(height: 2),
        Container(
          width: double.infinity,
          height: 100,
          color: const Color.fromARGB(255, 198, 89, 89),
        ),
        SizedBox(height: 2),
        Container(width: double.infinity, height: 100, color: Colors.green),
        SizedBox(height: 2),
        Container(
          width: double.infinity,
          height: 100,
          color: const Color.fromARGB(255, 0, 0, 0),
        ),
        SizedBox(height: 2),
        Container(width: double.infinity, height: 100, color: Colors.green),
        SizedBox(height: 2),
        Container(
          width: double.infinity,
          height: 100,
          color: const Color.fromARGB(255, 198, 89, 89),
        ),
        SizedBox(height: 2),
        Container(width: double.infinity, height: 100, color: Colors.green),
        SizedBox(height: 2),
        Container(
          width: double.infinity,
          height: 100,
          color: const Color.fromARGB(255, 0, 0, 0),
        ),
        SizedBox(height: 2),
        Container(width: double.infinity, height: 100, color: Colors.green),
        SizedBox(height: 2),
        Container(
          width: double.infinity,
          height: 100,
          color: const Color.fromARGB(255, 198, 89, 89),
        ),
        SizedBox(height: 2),
        Container(width: double.infinity, height: 100, color: Colors.green),
        SizedBox(height: 2),
        Container(
          width: double.infinity,
          height: 100,
          color: const Color.fromARGB(255, 0, 0, 0),
        ),
        SizedBox(height: 2),
      ],
    );
  }
}
