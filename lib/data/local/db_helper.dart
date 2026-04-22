import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  // 1. Create a private static final instance at the class level
  static final DbHelper getInstance = DbHelper._();
  static final String tableNote = "note";
  static final String columnNoteSn = "s_no";
  static final String columnNoteTitle = "note";
  static final String columnNoteDesc = "note";

  //private constructor
  DbHelper._();

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

  //all queries
  Future<bool> addNote({required String mTitle, required String mDes}) async {
    var db = await getdb();

    int rowEffected = await db.insert(tableNote, { 
      columnNoteTitle : mTitle,
      columnNoteDesc : mDes
     });

     return rowEffected > 0;
  }
}
