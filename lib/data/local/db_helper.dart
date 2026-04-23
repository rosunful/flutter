import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {

  //private constructor
  DbHelper._();
  
  // 1. Create a private static final instance at the class level
  static final DbHelper getInstance = DbHelper._();

  static final String tableNote = "note";
  static final String columnNoteSn = "s_no";
  static final String columnNoteTitle = "note";
  static final String columnNoteDesc = "note";

  

  //database object
  Database? myDB;

  //myDB open(if exist or create new)
  Future<Database> getdb() async {
    return myDB ?? await opendb();

    // if (myDB != null) {
    //   return myDB!;
    // } else {
    //   myDB = await opendb();
    //   return myDB!;
    // }
  }

  //creating the database
  Future<Database> opendb() async {
    Directory appDir = await getApplicationDocumentsDirectory();

    String dbPath = join(appDir.path, "nottedDb.db");

    return await openDatabase(
      dbPath,
      onCreate: (db, version) {
        // create the tables here
        db.execute(
          "create table $tableNote( $columnNoteSn integer primary key autoincrement,$columnNoteTitle text ,$columnNoteDesc text)",
        );
      },
      version: 1,
    );
  }

  //notifying the database created
  Future<bool> addNote({required String mTitle, required String mDes}) async {
    //This ensures the database is open and ready to receive data before you try to write to it.
    var db = await getdb();

    /*          (db.insert->tablenote)
    This is the "Save" command. It takes a Map where: 
     -  The Key (left side) is your database column name.
     -  The Value (right side) is the actual text (mTitle, mDes) the user entered.

      (int rowEffected)
     -  The database returns a number. If it successfully adds a row, it returns that row's unique ID (like 1, 2, or 3).*/
    int rowEffected = await db.insert(tableNote, {
      columnNoteTitle: mTitle,
      columnNoteDesc: mDes,
    });

    /*  
    (return rowEffected > 0;)
    This converts that ID into a simple "Yes" or "No":
    ID > 0: Success! Return true.
    ID is 0: Something went wrong. Return false */
    return rowEffected > 0;
  }

 //reading the all data
  Future<List<Map<String, dynamic>>> getAllNotes() async {
    var db = await getdb();

    List<Map<String, dynamic>> mdata = await db.query(tableNote);

    return mdata;
  }
}
