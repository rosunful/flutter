import 'package:flutter/material.dart';

void main() {
  runApp(Day11SimpleCalculator());
}

class Day11SimpleCalculator extends StatelessWidget {
  const Day11SimpleCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Calculator());
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var no1 = TextEditingController();
  var no2 = TextEditingController();
  num result = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = screenWidth > 600 ? 4 : 2;

    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.red, child: Text("Calculator")),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 200,
              child: TextField(
                controller: no1,
                decoration: InputDecoration(label: Text("Enter the first number !")),
              ),
            ),
            SizedBox(
              width: 200,
              child: TextField(
                controller: no2,
                decoration: InputDecoration(label: Text("Enter the second number !")),
              ),
            ),

            SizedBox(height: 12),

            Expanded(
              child: GridView.count(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 3.0, 
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        var no11 = int.parse(no1.text.toString());

                        var no22 = int.parse(no2.text.toString());

                        result = no11 + no22;
                      });
                    },
                    child: const Text("Add"),
                  ),
                  ElevatedButton(onPressed: () {
                    setState(() {
                        var no111 = int.parse(no1.text.toString());

                        var no222 = int.parse(no2.text.toString());

                        result = no111 - no222;
                      });
                  }, child: const Text("Subtract")),
                  ElevatedButton(onPressed: () {
                    setState(() {
                        var no11 = int.parse(no1.text.toString());

                        var no22 = int.parse(no2.text.toString());

                        result = no11 * no22;
                      });
                  }, child: const Text("Multiply")),
                  ElevatedButton(onPressed: () {
                    setState(() {
                        var no11 = int.parse(no1.text.toString());

                        var no22 = int.parse(no2.text.toString());

                        result = no11/no22;
                      });
                  }, child: const Text("Divide")),
                ],
              ),
            ),

            Text("$result"),
          ],
        ),
      ),
    );
  }
}
