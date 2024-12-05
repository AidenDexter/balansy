import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../constants/sqflite_constants.dart';

@LazySingleton()
class DatabaseService {
  static const dbName = 'balancy_db.db';
  static const dbVersion = 1;
  static Database? _db;

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await getDatabase();
    return _db!;
  }

  Future<Database> getDatabase() async {
    final databaseDirPath = await getDatabasesPath();
    final databasePath = join(databaseDirPath, dbName);
    final database = await openDatabase(version: dbVersion, databasePath, onCreate: (db, version) {
      db
        ..execute('''
      CREATE TABLE ${SQFLiteConstants.categoryTableName} (
      ${SQFLiteConstants.ctgIdColumnName} INTEGER PRIMARY KEY, 
      ${SQFLiteConstants.ctgTitleColumnName} TEXT NOT NULL, 
      ${SQFLiteConstants.ctgDescriptionColumnName} TEXT NOT NULL,
      ${SQFLiteConstants.ctgStatusColumnName} INTEGER NOT NULL DEFAULT 0
      )
       ''')
        ..execute('''
        CREATE TABLE ${SQFLiteConstants.transactionTableName}(
        ${SQFLiteConstants.trIdColumnName} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${SQFLiteConstants.trTypeColumnName} TEXT NOT NULL, -- "income" или "expense"
        ${SQFLiteConstants.trAmountColumnName} REAL NOT NULL,
        ${SQFLiteConstants.trCategoryIdColumnName} INTEGER NOT NULL,
        ${SQFLiteConstants.trDescriptionColumnName} TEXT NOT NULL,
        ${SQFLiteConstants.trDateColumnName}TEXT NOT NULL,
        FOREIGN KEY (${SQFLiteConstants.trCategoryIdColumnName}) REFERENCES ${SQFLiteConstants.categoryTableName} (${SQFLiteConstants.ctgIdColumnName})
        )
      ''');
    });

    return database;
  }

  // Общие запросы к базе данных
  Future<int> insert(String table, Map<String, dynamic> data) async {
    final db = await database;
    return db.insert(table, data);
  }

  Future<int> update(String table, Map<String, dynamic> data, String where, List<Object?>? whereArgs) async {
    final db = await database;
    return db.update(
      table,
      data,
      where: where,
      whereArgs: whereArgs,
    );
  }

  Future<int> delete(String table, String where, List<Object?>? whereArgs) async {
    final db = await database;
    return db.delete(
      table,
      where: where,
      whereArgs: whereArgs,
    );
  }

  Future<List<Map<String, Object?>>> query(String table, {String? where, List<Object?>? whereArgs}) async {
    final db = await database;
    return db.query(
      table,
    );
  }
}
