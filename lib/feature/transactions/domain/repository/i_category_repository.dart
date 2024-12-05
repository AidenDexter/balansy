import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

import '../entity/category.dart';

@immutable
abstract interface class ICategoriesRepository {
  BehaviorSubject<List<Category>> get categories;

  Future<void> createCategory(Category category);
  Future<void> updateCategory(Category category);
  Future<void> deleteCategory(int id);

  void dispose();
}
