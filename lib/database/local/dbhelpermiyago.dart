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

    return await openDatabase(
      dbAddress,
      onCreate: (db, version) async {
        await db.execute(
          "create table $tableName( $columnSN INTEGER PRIMARY KEY AUTOINCREMENT , $columnTitle TEXT , $columnDesc TEXT )",
        );
      },
      version: 1,
    );
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
}
