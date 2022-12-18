import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
class DatabaseHelper {
  static const _databaseName = "MyDatabase.db";
  static const _databaseVersion = 1;
  static const table = 'my_table';
  static const columnId = '_id';
  static const columnName = 'name';
  static const columnReg = 'reg';
  static const columnPhone = 'phone';
  static const columnEmail = 'email';
  static const columnGender = 'gender';
  static const columnFee = 'fee';
  static const columnStatus = 'st';
  static late Database _db;
  Future<void> mydb() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, _databaseName);
    _db = await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
  }
  // SQL code to create the database table
  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table (
            $columnId INTEGER PRIMARY KEY,
            $columnName TEXT NOT NULL,
            $columnReg TEXT NOT NULL,
            $columnEmail TEXT NOT NULL,
            $columnPhone TEXT NOT NULL,
            $columnGender TEXT NOT NULL,
            $columnFee TEXT NOT NULL,
            $columnStatus TEXT NOT NULL
           
          )
          ''');
  }
  Future<int> insert(Map<String, dynamic> row) async {
    return await _db.insert(table, row);
  }

  Future<List<Map<String, dynamic>>> queryAllRows() async {
    return await _db.query(table);
  }


  Future<int> queryRowCount() async {
    final results = await _db.rawQuery('SELECT COUNT(*) FROM $table');
    return Sqflite.firstIntValue(results) ?? 0;
  }
  Future<int> girls() async {
    final results = await _db.rawQuery('SELECT COUNT(*) FROM $table where gender="Female"');
    return Sqflite.firstIntValue(results) ?? 0;
  }
  Future<int> male() async {
    final results = await _db.rawQuery('SELECT COUNT(*) FROM $table where gender="Male"');
    return Sqflite.firstIntValue(results) ?? 0;
  }
  Future<int> paid() async {
    final results = await _db.rawQuery('SELECT COUNT(*) FROM $table where st="paid"');
    return Sqflite.firstIntValue(results) ?? 0;
  }
  Future<int> unpaid() async {
    final results = await _db.rawQuery('SELECT COUNT(*) FROM $table where st="unpaid"');
    return Sqflite.firstIntValue(results) ?? 0;
  }
  Future<int> count() async {
    final results = await _db.rawQuery('SELECT SUM(fee) FROM $table');
    return Sqflite.firstIntValue(results) ?? 0;
  }
  // We are assuming here that the id column in the map is set. The other
  // column values will be used to update the row.
  Future<int> update(Map<String, dynamic> row) async {
    int id = row[columnId];
    return await _db.update(
      table,
      row,
      where: '$columnId = ?',
      whereArgs: [id],
    );
  }
  Future<int> Delete(Map<String, dynamic> row) async {
    int id = row[columnId];
    return await _db.delete(
      table,
      where: '$columnId = ?',
      whereArgs: [id],
    );
  }

  // Deletes the row specified by the id. The number of affected rows is
  // returned. This should be 1 as long as the row exists.
  Future<int> delete(int id) async {
    return await _db.delete(
      table,
      where: '$columnId = ?',
      whereArgs: [id],
    );
  }
}
