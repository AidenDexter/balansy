import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../core/constants/sqflite_constants.dart';
import '../../../../core/services/database_service/database_service.dart';
import '../../domain/entity/category.dart';
import '../../domain/repository/i_category_repository.dart';

@immutable
@Singleton(as: ICategoriesRepository)
class CategoriesRepository implements ICategoriesRepository {
  final BehaviorSubject<List<Category>> _categoriesStream;
  final DatabaseService _databaseService;

  CategoriesRepository._(List<Category> categories, this._databaseService)
      : _categoriesStream = BehaviorSubject.seeded(categories);

  @FactoryMethod(preResolve: true)
  static Future<CategoriesRepository> init(DatabaseService databaseService) async {
    final categories = await _readCategories(databaseService);
    return CategoriesRepository._(categories, databaseService);
  }

  static Future<List<Category>> _readCategories(DatabaseService databaseService) async {
    final data = await databaseService.query(SQFLiteConstants.categoryTableName);

    return data.map(Category.fromMap).toList();
  }

  @override
  Future<void> createCategory(Category category) async {
    await _databaseService.insert(SQFLiteConstants.categoryTableName, {
      SQFLiteConstants.ctgTitleColumnName: category.title,
      SQFLiteConstants.ctgDescriptionColumnName: category.description,
    });
    _categoriesStream.add([..._categories, category]);
  }

  @override
  Future<void> deleteCategory(int id) async {
    await _databaseService.delete(
      SQFLiteConstants.categoryTableName,
      '${SQFLiteConstants.ctgIdColumnName} = ?',
      [id],
    );
    _categoriesStream.add(List.from(_categories)..removeWhere((e) => e.id == id));
  }

  @override
  Future<void> updateCategory(Category category) async {
    final index = _categories.indexWhere((e) => e.id == category.id);
    if (index == -1) return;

    await _databaseService.update(
      SQFLiteConstants.categoryTableName,
      category.toMap(),
      '${SQFLiteConstants.ctgIdColumnName} = ?',
      [category.id],
    );
    _categoriesStream.add(
      List.from(_categories)
        ..removeAt(index)
        ..insert(index, category),
    );
  }

  @override
  BehaviorSubject<List<Category>> get categories => _categoriesStream;
  List<Category> get _categories => _categoriesStream.value;

  @override
  @mustCallSuper
  void dispose() {
    _categoriesStream.close();
  }
}
