import 'package:flutter/material.dart';
import 'package:flutter_day_1/widgets/day10customwidget.dart';

void main() {
  runApp(Day10custwid());
}

class Day10custwid extends StatelessWidget {
  const Day10custwid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Title(color: Colors.green, child: Text("Brazil")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Brazil(), 
              const SizedBox(height: 8),
              Argentina(), 
              const SizedBox(height: 8),
              Portugal(), 
              const SizedBox(height: 8),
              Morocoo(), 
              const SizedBox(height: 8),
              Germany()]),
        ),
      ),
    );
  }
}

class Brazil extends StatelessWidget {
  const Brazil({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButtonAgain(
      
      name: "Brazil",
      icon: Icon(Icons.sports_football),
      color: Colors.yellow,
      message: () {
        print("Brazil");
      },
    );
  }
}

class Argentina extends StatelessWidget {
  const Argentina({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButtonAgain(
      name: "Argentina",
      icon: Icon(Icons.sports_football),
      color: const Color.fromARGB(255, 37, 140, 188),
      message: () {
        print("Argentina");
      },
    );
  }
}

class Portugal extends StatelessWidget {
  const Portugal({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButtonAgain(
      name: "Portugal",
      icon: Icon(Icons.sports_football),
      color: const Color.fromARGB(255, 161, 141, 141),
      
      message: () {
        print("Portugal");
      },
    );
  }
}

class Morocoo extends StatelessWidget {
  const Morocoo({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButtonAgain(
      name: "Morocoo",
      icon: Icon(Icons.sports_football),
      color: const Color.fromARGB(255, 255, 124, 59),
      message: () {
        print("Morocoo");
      },
    );
  }
}

class Germany extends StatelessWidget {
  const Germany({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButtonAgain(
      name: "Germany",
      icon: Icon(Icons.sports_football),
      color: const Color.fromARGB(255, 0, 0, 0),
      message: () {
        print("Germany");
      },
    );
  }
}
