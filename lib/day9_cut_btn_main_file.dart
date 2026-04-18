import 'package:flutter/material.dart';
import 'package:flutter_day_1/widgets/day9_custom_button.dart';

void main() {
  runApp(Day9CutBtnMainFile());
}

class Day9CutBtnMainFile extends StatelessWidget {
  const Day9CutBtnMainFile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Custom Widget")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RunBtn(),
              const SizedBox(height: 8),
              StopBtn(),
              const SizedBox(height: 8),
              PauseBtn(),
              const SizedBox(height: 8),
              ComingSoon(),
            ],
          ),
        ),
      ),
    );
  }
}

class RunBtn extends StatelessWidget {
  const RunBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomWidget(
      name: "Run",
      color: Colors.green,
      icon: Icon(Icons.play_circle),
      callback: () {
        print("Game continues !!");
      },
    );
  }
}

class StopBtn extends StatelessWidget {
  const StopBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomWidget(
      name: "Stop",
      color: const Color.fromARGB(255, 206, 105, 38),
      icon: Icon(Icons.stop),
      callback: () {
        print("Game stop !!");
      },
    );
  }
}

class PauseBtn extends StatelessWidget {
  const PauseBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomWidget(
      name: "Pause",
      color: const Color.fromARGB(255, 38, 58, 206),
      icon: Icon(Icons.pause),
      callback: () {
        print("Game pause !!");
      },
    );
  }
}

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomWidget(
      name: "Coming Soon",
      callback: () {
        print("Coming Soon !!");
      },
    );
  }
}
