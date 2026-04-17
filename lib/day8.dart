import 'package:flutter/material.dart';

void main() {
  runApp(Day8());
}

class Day8 extends StatelessWidget {
  const Day8({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Profile"), backgroundColor: Colors.blueAccent),

        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 10),
              SizedBox(
                height: 300,
                child: Card(
                  elevation: 2,
                  color: Colors.black26,
                  child: Image.asset('assets/images/boy.png'),
                ),
              ),
              const SizedBox(height: 15),

              const SizedBox(width: 20),

              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.green, width: 2),
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              const SizedBox(height: 3),

              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.green, width: 2),
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),

              const SizedBox(height: 3),

              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Phone number',

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.pink,
                        width: 2,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                    ),

                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.0,
                        color: Colors.pinkAccent,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.white,
                  elevation: 5,
                  minimumSize: Size(300, 50),
                  
                ),
                child: Text("Sumit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
