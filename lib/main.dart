import 'package:flutter/material.dart';

void main() {
  runApp(const Fura());
}

class Fura extends StatelessWidget {
  const Fura({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Title(color: Colors.green, child: Text("Lovely")),
          backgroundColor: Colors.lightBlue,
        ),
        body: Column(
          children: [
            Text("data"),
            TextButton(
              onPressed: () {
                print("object");
              },
              child: Text("Btn 1"),
            ),
            Text("Name"),
            ElevatedButton(
              onPressed: () {
                print("Button has clicked");
              },
              child: Text("Btn 2"),
            ),
            Text("Submit"),
            OutlinedButton(
              onPressed: () {
                print("object");
              },
              child: Text("Btn 3"),
            ),
            Container(height: 100, width: 100, child: Center(child: Image.asset("assets/images/boy.png"))),
          ],
        ),
      ),
    );
  }
}
