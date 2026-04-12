import 'package:flutter/material.dart';

void main() {
  runApp(Day3());
}

class Day3 extends StatelessWidget {
  const Day3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Title(
            color: Colors.blueAccent,
            child: Text("Facebook", style: TextStyle(backgroundColor: const Color.fromARGB(255, 88, 175, 205))),
          ),
        ),
        body: Center(
          child: Container(
            width: 200,
            color: Colors.lightBlueAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => print("object"),
                  child: CircleAvatar(backgroundColor: Colors.green),
                ),
                CircleAvatar(backgroundColor: Colors.green),
                CircleAvatar(backgroundColor: Colors.green),
                CircleAvatar(backgroundColor: Colors.green),
                Padding(
                  padding: const EdgeInsets.all(11),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            print("Data one");
                          },
                          child: Text("data"),

                        ),
                        InkWell(
                          onTap: () {
                            print("data 2 is pressed");
                          },
                          child: Text("data"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("data"),
                        ),
                        Text("data2"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("dataa"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("dasta"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("dsata"),
                        ),
                        Text("dasta"),
                        
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 171, 163, 136),
      ),
    );
  }
}
