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
          margin: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Welcome to the hotel app !!",
                  style: TextStyle(fontSize: 20),
                ),
              ),

              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  height: 80,

                  decoration: BoxDecoration(
                    border: BoxBorder.all(color: Colors.black, width: 0.5),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(4, 3),
                        blurRadius: 7,
                        color: Colors.black26,
                      ),
                    ],
                  ),

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

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: BoxBorder.all(
                      width: 2,
                      color: Colors.black,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(4, 3),
                        blurRadius: 7,
                        blurStyle: BlurStyle.outer,
                      ),
                    ],
                  ),

                  child: Center(child: Text("Message ")),
                ),
              ),

              SizedBox(
                width: double.infinity,
                height: 100,
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

              Row(
                children: [
                  Expanded(
                    
                    child: SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: arrasNamesCollection.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(arrasNamesCollection[index]),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
