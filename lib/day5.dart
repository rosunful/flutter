import 'package:flutter/material.dart';

void main() {
  runApp(Day5());
}

class Day5 extends StatelessWidget {
  const Day5({super.key});

  @override
  Widget build(BuildContext context) {
    var arrasNamesCollection = ['lenovo', 'dell', 'mac', 'acer', 'hp', 'asus', 'dura'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("day 5 exploring")),
        body: Container(
          child: Column(
            children: [
              Center(
                child: Text(
                  "Welcome to the hotel app !!",
                  style: TextStyle(fontSize: 20),
                ),
              ),

              Container(
                height: 80,
                color: Colors.black38,
                
                
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  
                  
                  child: Row(
                  
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(backgroundColor: Colors.lightGreenAccent),
                      CircleAvatar(backgroundColor: Colors.lightGreenAccent),
                      CircleAvatar(backgroundColor: Colors.lightGreenAccent),
                     ],
                  ),
                ),
              ),

              Center(child: Text("Message ")),
              Container(
                width: 200,
                height: 200,
                child: Center(child: Text("Click for her for the location !")),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Name:"),
                      Text("Age:"),
                      Text("Address:"),
                      Text("Phone number:"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Roshan Dura"),
                      InkWell(child: Text("25")),
                      Text("Damauli"),
                      Text("980000001:"),
                    ],
                  ),

                  ElevatedButton(
                    onPressed: () {
                      print("object");
                    },
                    child: Text("data on pressed !"),
                  ),

                  OutlinedButton(
                    onPressed: () {
                      print("Ninja technique");
                    },
                    child: Text("NInja hattori"),
                  ),
                ],
              ),

              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Text(arrasNamesCollection[index]);
                  },
                  itemCount: arrasNamesCollection.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
