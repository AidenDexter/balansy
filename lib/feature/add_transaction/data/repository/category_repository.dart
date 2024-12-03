import 'package:sqflite/sqflite.dart';

import 'database_connection.dart';

class CategoryRepository {
  //initialize database connection
  // final DatabaseConnection _databaseConnection;
  CategoryRepository();

  static Database? _database;
  Future<Database> get database async {
    if (_database != null) return _database!;
    // _database = await _databaseConnection.setDatabase();
    return _database!;
  }

  //inserting data to table
  Future<int> insertData(String table, Map<String, Object> data) async {
    final connection = await database;
    return connection.insert(table, data);
  }
}
