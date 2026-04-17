import 'package:flutter/material.dart';

void main() {
  runApp(Day8gridview());
}

class Day8gridview extends StatelessWidget {
  const Day8gridview({super.key});

  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.pink,
      Colors.yellow,
      Colors.purple,
      Colors.teal,
      Colors.red,
      Colors.orange,
      Colors.redAccent,
      Colors.grey,
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Gird")),
        body: Container(
          margin: EdgeInsets.all(8),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,
            crossAxisSpacing: 6,
            mainAxisSpacing: 6),
            itemBuilder: (context, index) {
              return Container(color: arrColors[index]);
            },
            itemCount: arrColors.length,
            
          ),
        ),

        // Container(
        //   margin: EdgeInsets.all(8),
        //   child: GridView.count(
        //     crossAxisCount: 2,
        //     crossAxisSpacing: 6,
        //     mainAxisSpacing: 6,
        //     children: [
        //       Container(color: arrColors[0]),
        //       Container(color: arrColors[1]),
        //       Container(color: arrColors[2]),
        //       Container(color: arrColors[3]),
        //       Container(color: arrColors[4]),
        //       Container(color: arrColors[5]),
        //       Container(color: arrColors[6]),
        //       Container(color: arrColors[7]),
        //       Container(color: arrColors[8]),
        //       Container(color: arrColors[9]),
        //       Container(color: arrColors[10]),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
