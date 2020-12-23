import 'dart:async';
import 'package:flutter_sqllite_crud/M_dataTXT.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class CtlDB {
  // String _xDir; //localVariable
  // String get xDir => _xDir;
  // set xDir(x) {
  //   this._xDir = x;
  // }

  Future<Database> initAuthDb() async {
    var path = join("assets", "dbAuth.db");
    var db = await openDatabase(path, readOnly: true);
    return db;
  }

  Future<Database> initPrdDb() async {
    String d = await getDatabasesPath();
    String path = join(d,
        'dbProduct.db'); //data/user/0/com.example.flutter_sqllite_crud/databases/dbAuth.db
    var db = openDatabase(path, version: 1, onCreate: _createPrdDb);
    // print(path);
    return db;
  }

  void _createPrdDb(Database db, int version) async {
    await db.execute(DataTXT.xSql_1);
  }

//   Future<Auth> getNote(int id) async {
//     var dbClient = await db;
//     List<Map> result = await dbClient.query(tableNote,
//         columns: [columnId, columnTitle, columnDescription],
//         where: '$columnId = ?',
//         whereArgs: [id]);
// //    var result = await dbClient.rawQuery('SELECT * FROM $tableNote WHERE $columnId = $id');

//     if (result.length > 0) {
//       return new Note.fromMap(result.first);
//     }

//     return null;
//   }

  // void _selectAuthDb(Database db, int version) async {
  //   await db.execute(DataTXT.xSql_1);
  // }
}

class SqlLogin extends CtlDB {
  bool authenticationLogin() {
    bool v;
    super.initAuthDb();
    // super._selectAuthDb(db, version);

    return v;
  }
}
