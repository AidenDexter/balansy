import 'package:injectable/injectable.dart';

import '../../../../core/constants/db_fields.dart';
import '../../../../core/services/database_service/database_service.dart';
import '../../domain/entity/category.dart';

abstract interface class ICategoriesLocalDB {
  Future<void> create(Category category);
  Future<List<Category>> read();
  Future<void> update(Category category);
  Future<void> delete(int id);
}

@Injectable(as: ICategoriesLocalDB)
class CategoriesLocalDB implements ICategoriesLocalDB {
  const CategoriesLocalDB(this._databaseService);
  final DatabaseService _databaseService;
  @override
  Future<void> create(Category category) => _databaseService.insert(
        DBFields.categoryTable,
        {
          DBFields.categoryTitle: category.title,
          DBFields.categoryDescription: category.description,
        },
      );

  @override
  Future<void> delete(int id) => _databaseService.delete(
        DBFields.categoryTable,
        '${DBFields.categoryId} = ?',
        [id],
      );

  @override
  Future<List<Category>> read() async {
    final data = await _databaseService.query(DBFields.categoryTable);
    return data.map(Category.fromMap).toList();
  }

  @override
  Future<void> update(Category category) => _databaseService.update(
        DBFields.categoryTable,
        category.toMap(),
        '${DBFields.categoryId} = ?',
        [category.id],
      );
}
