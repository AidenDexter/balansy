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
  Future<void> create(Category category) async {
    final categoryFromDB = await _categoriesLocalDb.create(category);
    _categoriesStream.add([categoryFromDB, ..._categories]);
  }

  @override
  Future<void> update(Category category) async {
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
  Future<void> delete(int id) async {
    await _categoriesLocalDb.delete(id);
    _categoriesStream.add(List.from(_categories)..removeWhere((e) => e.id == id));
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
