import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../constants/db_fields.dart';

@LazySingleton()
class DatabaseService {
  static const dbName = 'balansy_db.db';
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
      CREATE TABLE ${DBFields.categoryTable} (
      ${DBFields.categoryId} INTEGER PRIMARY KEY AUTOINCREMENT, 
      ${DBFields.categoryTitle} TEXT NOT NULL, 
      ${DBFields.categoryDescription} TEXT NOT NULL,
      ${DBFields.categoryStatus} INTEGER NOT NULL DEFAULT 0
      )
       ''')
        ..execute('''
        CREATE TABLE ${DBFields.transactionTable}(
        ${DBFields.transactionId} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${DBFields.transactionType} TEXT NOT NULL,
        ${DBFields.transactionAmount} REAL NOT NULL,
        ${DBFields.transactionCategoryId} INTEGER NOT NULL,
        ${DBFields.transactionDescription} TEXT NOT NULL,
        ${DBFields.transactionDate} TEXT NOT NULL,
        FOREIGN KEY (${DBFields.transactionCategoryId}) REFERENCES ${DBFields.categoryTable} (${DBFields.categoryId})
        )
      ''');
    });

    return database;
  }

  // Общие запросы к базе данных
  Future<int> insert(String table, Map<String, Object?> data) async {
    final db = await database;
    return db.insert(
      table,
      data,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<int> update(String table, Map<String, Object?> data, String where, List<Object?>? whereArgs) async {
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
