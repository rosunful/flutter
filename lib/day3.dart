import 'package:flutter/material.dart';

void main() {
  runApp(Day3());
}

class Day3 extends StatelessWidget {
  const Day3({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames = ["pokhara", 'ktm', 'sanjya', 'damauli', 'chitwan', 'itahari'];

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 171, 163, 136),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Facebook"), // Simplified Title for standard use
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
                
                Expanded(
                  child: ListView.separated(
                    itemCount: arrNames.length,
                    itemBuilder: (context, index) {
                      return Text(arrNames[index]);
                    },
                    separatorBuilder: (context, index) {
                      return Divider(height: 10, thickness: 2); // Reduced height for visibility
                    },
                  ),
                ),

                // This Padding is now INSIDE the Column's children list
                Padding(
                  padding: const EdgeInsets.all(11),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () => print("Data one"),
                          child: Text("data"),
                        ),
                        InkWell(
                          onTap: () => print("data 2 is pressed"),
                          child: Text("data"),
                        ),
                        Padding(padding: const EdgeInsets.all(8.0), child: Text("data")),
                        Text("data2"),
                        Padding(padding: const EdgeInsets.all(8.0), child: Text("dataa")),
                        Padding(padding: const EdgeInsets.all(8.0), child: Text("dasta")),
                        Padding(padding: const EdgeInsets.all(8.0), child: Text("dsata")),
                        Text("dasta"),
                      ],
                    ),
                  ),
                ),
              ], // End of Column children
            ), // End of Column
          ), // End of Container
        ), // End of Center
      ), // End of Scaffold
    ); // End of MaterialApp
  }
}
