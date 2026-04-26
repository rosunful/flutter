import 'package:flutter/material.dart';
import 'package:flutter_day_1/database/local/dbhelpermiyago.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: InnerDay()));
}

class InnerDay extends StatefulWidget {
  const InnerDay({super.key});

  @override
  State<InnerDay> createState() => _DayState();
}

class _DayState extends State<InnerDay> {
  List<Map<String, dynamic>> allNotes = [];
  Dbhelpermiyago? dbRef;
  var txtTitleController = TextEditingController();
  var txtDescController = TextEditingController();

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
  void dispose() {
    txtTitleController.dispose();
    txtDescController.dispose();
    super.dispose();
  }

  // ] HANDLES BOTH ADD & UPDATE UI
  Widget buildNoteSheet({bool isUpdate = false, int? sn}) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            isUpdate ? "Update Note" : "Add Note",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w200),
          ),
          SizedBox(height: 10),
          TextField(
            controller: txtTitleController,
            decoration: InputDecoration(labelText: "Title", border: OutlineInputBorder()),
          ),
          SizedBox(height: 10),
          TextField(
            controller: txtDescController,
            decoration: InputDecoration(
              labelText: "Description",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () async {
                    var title = txtTitleController.text;
                    var desc = txtDescController.text;

                    if (isUpdate) {
                      await dbRef?.updateNote(title: title, desc: desc, sn: sn!);
                    } else {
                      await dbRef?.addData(mTitle: title, mDesc: desc);
                    }

                    getNotes();
                    txtTitleController.clear();
                    txtDescController.clear();
                    Navigator.pop(context);
                  },
                  child: Text(isUpdate ? "Update" : "Add"),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notes")),
      body: allNotes.isNotEmpty
          ? ListView.builder(
              itemCount: allNotes.length,
              itemBuilder: (_, index) {
                return ListTile(
                  title: Text(allNotes[index][Dbhelpermiyago.columnTitle]),
                  subtitle: Text(allNotes[index][Dbhelpermiyago.columnDesc]),
                  trailing: Wrap(
                    spacing: 12,
                    children: [
                      InkWell(
                        onTap: () {
                          txtTitleController.text =
                              allNotes[index][Dbhelpermiyago.columnTitle];
                          txtDescController.text =
                              allNotes[index][Dbhelpermiyago.columnDesc];
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) => buildNoteSheet(
                              isUpdate: true,
                              sn: allNotes[index][Dbhelpermiyago.columnSN],
                            ),
                          );
                        },
                        child: Icon(Icons.edit, color: Colors.blue),
                      ),
                      InkWell(
                        onTap: () async {
                          await dbRef?.deleteNote(
                            sno: allNotes[index][Dbhelpermiyago.columnSN],
                          );
                          getNotes();
                        },
                        child: Icon(Icons.delete, color: Colors.red),
                      ),
                    ],
                  ),
                );
              },
            )
          : Center(child: Text("No data")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          txtTitleController.clear();
          txtDescController.clear();
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => buildNoteSheet(),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
