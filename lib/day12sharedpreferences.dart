import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(Day12sharedpreferences());
}

class Day12sharedpreferences extends StatelessWidget {
  const Day12sharedpreferences({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Sharedpref());
  }
}

class Sharedpref extends StatefulWidget {
  const Sharedpref({super.key});

  @override
  State<Sharedpref> createState() => _SharedPreferencesState();
}

class _SharedPreferencesState extends State<Sharedpref> {
  var nameController = TextEditingController();
  static const String KEYNAME = "name";

  var nameValue = "Not, entered the name ! ";

  @override
  void initState() {
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.blue, child: Text("Shared Preference")),
      ),
      body: Center(
        child: SizedBox(
          width: 200,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                //yo chai text ko lagi hai {dont get confusion!!}
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  label: Text("Name"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () async {
                  var name = nameController.text.toString();

                  var prefs = await SharedPreferences.getInstance();

                  await prefs.setString(KEYNAME, name);

                  setState(() {
                     nameValue = name;
                  });
                },
                child: Text("Result"),
              ),
              const SizedBox(height: 40),
              Text("Output :$nameValue "),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> getValue() async {
    var prefs = await SharedPreferences.getInstance();

    var getName = prefs.getString(KEYNAME);

    

    setState(() {
      nameValue = getName ?? "nameValue" ; 
    });
  }
}
