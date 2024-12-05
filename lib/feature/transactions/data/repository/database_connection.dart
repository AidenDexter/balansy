// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';

// class DatabaseConnection {
//   Future<Database> setDatabase() async {
//     final directory = await getApplicationDocumentsDirectory();
//     final path = join(directory.path, 'db_balancy_sqflite');
//     final database = await openDatabase(path, version: 1, onCreate: _onCreateDatabase);
//     return database;
//   }

//   Future<void> _onCreateDatabase(Database database, int version) async {
//     await database.execute('CREATE TABLE categories (id INTEGER PRIMARY KEY, name TEXT, description TEXT)');
//   }
// }
