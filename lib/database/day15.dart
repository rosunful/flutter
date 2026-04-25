import 'package:flutter/material.dart';
import 'package:flutter_day_1/database/local/dbhelpermiyago.dart';

void main() {
  runApp(InnerDay());
}

class InnerDay extends StatefulWidget {
  const InnerDay({super.key});

  @override
  State<InnerDay> createState() => _DayState();
}

class _DayState extends State<InnerDay> {
  List<Map<String, dynamic>> allNotes = [];
  Dbhelpermiyago? dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = Dbhelpermiyago.goInstance;
    getNotes();
  }

  Future<void> getNotes() async {
    allNotes = await dbRef!.readData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // Dbhelpermiyago db = Dbhelpermiyago.goInstance;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Title(color: Colors.yellow, child: Text("Notes")),
        ),
        body: allNotes.isNotEmpty
            ? ListView.builder(
                itemBuilder: (_, index) {
                  // here we show your notes !!
                  return ListTile(
                    leading: Text(allNotes[index][Dbhelpermiyago.columnSN].toString()),
                    title: Text(allNotes[index][Dbhelpermiyago.columnTitle]),
                    subtitle: Text(allNotes[index][Dbhelpermiyago.columnDesc]),
                  );
                },
                itemCount: allNotes.length,
              )
            : Center(child: Text("NO data")),

        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            //note to be added from here !!
            bool check = await dbRef!.addData(
              mTitle: "New Note",
              mDesc: "Description here",
            );
            if (check) {
              getNotes();
            }
          },

          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
