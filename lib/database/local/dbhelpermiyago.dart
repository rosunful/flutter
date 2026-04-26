import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Dbhelpermiyago {
  Dbhelpermiyago._();
  static final Dbhelpermiyago goInstance = Dbhelpermiyago._();
  static final String tableName = "notes";
  static final String columnSN = "sn";
  static final String columnTitle = "title";
  static final String columnDesc = "desc";

  Database? myDB;

  Future<Database> geetdb() async {
    return myDB ?? await opendb();
  }

  Future<Database> opendb() async {
    Directory dir = await getApplicationDocumentsDirectory();

    String dbAddress = join(dir.path, "mydb.db");

    myDB = await openDatabase(
      dbAddress,
      onCreate: (db, version) async {
        await db.execute(
          "create table $tableName( $columnSN INTEGER PRIMARY KEY AUTOINCREMENT , $columnTitle TEXT , $columnDesc TEXT )",
        );
      },
      version: 1,
    );
    return myDB!;
  }

  Future<bool> addData({required String mTitle, required String mDesc}) async {
    var db = await geetdb();

    int rowEffected = await db.insert(tableName, {
      columnTitle: mTitle,
      columnDesc: mDesc,
    });

    return rowEffected > 0;
  }

  Future<List<Map<String, dynamic>>> readData() async {
    var db = await geetdb();

    List<Map<String, dynamic>> mdata = await db.query(tableName);

    return mdata;
  }

  Future<bool> updateNote({
    required String title,
    required String desc,
    required int sn,
  }) async {
    var db = await geetdb();

    int rowsEffected = await db.update(
      tableName,
      {columnTitle: title, columnDesc: desc},
      where: "$columnSN = ?", 
      whereArgs: [sn],
    );

    return rowsEffected > 0;
  }

  Future<bool> deleteNote({required int sno}) async {

  var db = await geetdb();

  int rowEffected = await db.delete(
    tableName,
    where: "$columnSN = ?",
    whereArgs: [sno],
  );

  return rowEffected > 0;
}



}
