import 'package:flutter/material.dart';

void main() {
  runApp(Day7());
}

class Day7 extends StatelessWidget {
  const Day7({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Day7',
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome back!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: const Color.fromARGB(209, 9, 9, 9),
                ),
              ),
              Text(
                "Please login to continue using our app .",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromARGB(163, 14, 14, 14),
                ),
              ),

              const SizedBox(height: 28),
              Text("Email", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
              const SizedBox(height: 2),

              Container(
                width: double.infinity,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black38, width: 1.2),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 4, left: 6),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(235, 76, 175, 79),
                        maxRadius: 6,
                      ),
                      SizedBox(width: 6),
                      Text("Enter your Email ."),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 10),
              Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),

              const SizedBox(height: 2),

              Container(
                width: double.infinity,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black38, width: 1.2),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 4, left: 6),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(235, 76, 175, 79),
                        maxRadius: 6,
                      ),
                      SizedBox(width: 6),
                      Text("Enter your Password ."),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 21),

              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Center(
                  child: Text(
                    "Log In",
                    style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              Row(
                children: [
                  const Expanded(
                    child: Divider(thickness: 1, color: Colors.grey, endIndent: 10),
                  ),

                  Text(
                    "Or",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
                  ),

                  const Expanded(
                    child: Divider(thickness: 1, color: Colors.grey, indent: 10),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: Colors.black, width: 0.3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/boy.png"),
                      maxRadius: 10,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Continue with Google",
                      style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 9),

              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 74, 132, 195),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: Colors.black, width: 0.3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/boy.png"),
                      maxRadius: 10,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Continue with Facebook",
                      style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
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
