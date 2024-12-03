import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../../../feature/add_transaction/domain/entity/category.dart';

class DatabaseService {
  static const dbName = 'balancy_db.db';
  static const dbVersion = 1;
  static Database? _db;

  static final DatabaseService instance = DatabaseService._constructor();

  DatabaseService._constructor();

  final String _categoryTableName = 'categories';
  final String _categoryIdColumnName = 'id';
  final String _categoryTitleColumnName = 'title';
  final String _categoryDescriptionColumnName = 'description';
  final String _categoryStatusColumnName = 'status';

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await getDatabase();
    return _db!;
  }

  Future<Database> getDatabase() async {
    final databaseDirPath = await getDatabasesPath();
    final databasePath = join(databaseDirPath, dbName);
    final database = await openDatabase(version: dbVersion, databasePath, onCreate: (db, version) {
      db.execute('''
      CREATE TABLE $_categoryTableName (
      $_categoryIdColumnName INTEGER PRIMARY KEY, 
      $_categoryTitleColumnName TEXT NOT NULL, 
      $_categoryDescriptionColumnName TEXT NOT NULL,
      $_categoryStatusColumnName INTEGER NOT NULL DEFAULT 0
      )
       ''');
    });
    return database;
  }

  Future<void> addCategory(String title, String description) async {
    final db = await database;
    await db.insert(_categoryTableName, {
      _categoryTitleColumnName: title,
      _categoryDescriptionColumnName: description,
    });
    debugPrint("addCategory $title $description");
  }

  Future<List<Category>> getCategories() async {
    final db = await database;
    final data = await db.query(_categoryTableName);

    return data.map(Category.fromMap).toList();
  }

  Future<int> updateCategoryStatus(int id, int status) async {
    final db = await database;
    final result = await db.update(
      _categoryTableName,
      {
        _categoryStatusColumnName: status,
      },
      where: 'id = ?',
      whereArgs: [id],
    );

    return result;
  }

  Future<int> updateCategories(int id, String title, String? description) async {
    final db = await database;

    final data = {
      _categoryTitleColumnName: title,
      _categoryDescriptionColumnName: description,
    };

    final result = await db.update(
      _categoryTableName,
      data,
      where: 'id = ?',
      whereArgs: [id],
    );

    return result;
  }

  Future<int> updateCategory(Category category) async {
    final db = await database;
    return await db.update(
      'categories', // Имя таблицы
      category.categoryMap(),
      where: 'id = ?', // Условие по ID
      whereArgs: [category.id],
    );
  }

  Future<void> deleteCategory(int id) async {
    final db = await database;
    try {
      await db.delete(
        _categoryTableName,
        where: 'id = ?',
        whereArgs: [id],
      );
    } on Exception catch (error) {
      debugPrint(
        'Something went wrong when deleting a category:$error ',
      );
    }
  }
}
