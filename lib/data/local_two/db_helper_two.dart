import 'dart:io';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DbHelperTwo {
  //Private static instance
  static final DbHelperTwo instance = DbHelperTwo._();
  
  static final String tableNote = "notes";
  static final String columnNoteSn = "Son_no";
  static final String columnNoteTitle = "Title";
  static final String columnNoteDesc = "Desc";

  //constructor
  DbHelperTwo._();

  Database? mydb;

  Future<Database> getdb() async {
    mydb ??= await opendb(); // If null, open it and assign it
    return mydb!;

    //   if (mydb != null) {
    //     return mydb;
    //   } else {
    //     opendb();
    //   }
  }

  Future<Database> opendb() async {
    Directory mydir = await getApplicationDocumentsDirectory();

    String dbPath = join(mydir.path, "myDatabaseFile");

    //checking the path
    return await openDatabase(
      dbPath,
      onCreate: (db, version) async {
        db.execute(
          '''create table $tableNote( $columnNoteSn integer primary key autoincrement,$columnNoteTitle text ,$columnNoteDesc text)
          ''',
        );
      },
      version: 1,
    );
  }

  Future<bool> addNote({required String mTitle, required String mDesc}) async {
    var db = await getdb();

    int rowEffected = await db.insert(tableNote, {
      columnNoteTitle: mTitle,
      columnNoteDesc: mDesc,
    });

    return rowEffected > 0;
  }
}
