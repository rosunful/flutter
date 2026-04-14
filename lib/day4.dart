import 'package:flutter/material.dart';

void main() {
  runApp(DayFour());
}

class DayFour extends StatelessWidget {
  const DayFour({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Day4")),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(backgroundColor: Colors.blue),
                      CircleAvatar(backgroundColor: Colors.blue),
                      CircleAvatar(backgroundColor: Colors.blue),
                      CircleAvatar(backgroundColor: Colors.blue),
                      CircleAvatar(backgroundColor: Colors.blue),
                      CircleAvatar(backgroundColor: Colors.blue),
                      CircleAvatar(backgroundColor: Colors.blue),
                      CircleAvatar(backgroundColor: Colors.blue),
                      CircleAvatar(backgroundColor: Colors.blue),
                      CircleAvatar(backgroundColor: Colors.blue),
                    ],
                  ),
                ),
              ),
              Column(children: [Container(width: 100)]),
            ],
          ),
        ),
      ),
    );
  }
}
