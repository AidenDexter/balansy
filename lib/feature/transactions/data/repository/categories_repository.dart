import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/entity/category.dart';
import '../../domain/repository/i_category_repository.dart';
import '../data_source/categories_local_db.dart';

@immutable
@Singleton(as: ICategoriesRepository)
class CategoriesRepository implements ICategoriesRepository {
  final BehaviorSubject<List<Category>> _categoriesStream;
  final ICategoriesLocalDB _categoriesLocalDb;

  CategoriesRepository._(List<Category> categories, this._categoriesLocalDb)
      : _categoriesStream = BehaviorSubject.seeded(categories);

  @FactoryMethod(preResolve: true)
  static Future<CategoriesRepository> init(ICategoriesLocalDB _categoriesLocalDb) async {
    final categories = await _categoriesLocalDb.read();
    return CategoriesRepository._(categories, _categoriesLocalDb);
  }

  @override
  Future<void> createCategory(Category category) async {
    await _categoriesLocalDb.create(category);
    _categoriesStream.add([..._categories, category]);
  }

  @override
  Future<void> deleteCategory(int id) async {
    await _categoriesLocalDb.delete(id);
    _categoriesStream.add(List.from(_categories)..removeWhere((e) => e.id == id));
  }

  @override
  Future<void> updateCategory(Category category) async {
    final index = _categories.indexWhere((e) => e.id == category.id);
    if (index == -1) return;

    await _categoriesLocalDb.update(category);
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
