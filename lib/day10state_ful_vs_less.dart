import 'package:flutter/material.dart';

void main() {
  runApp(Day10stateFulVsLess());
}

class Day10stateFulVsLess extends StatelessWidget {
  const Day10stateFulVsLess({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter : $count"),
            const SizedBox(height: 8),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(5)),
                ),
              ),
              onPressed: () {
                setState(() {
                  count++;
                  print("counting increase $count");
                });
              },
              child: Text("Increase by 1"),
            ),

            const SizedBox(height: 8),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(5)),
                ),
              ),
              onPressed: () {
                setState(() {
                  count = count - 1;
                  print("counting decrease $count");
                });
              },
              child: Text("Reduce by 1"),
            ),


            const SizedBox(height: 8),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(5)),
                ),
              ),
              onPressed: () {
                setState(() {
                  count = 0;
                  print("counting reset $count");
                });
              },
              child: Text("Reset"),
            ),

          ],
        ),
      ),
    );
  }
}
