import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

import '../entity/category.dart';

@immutable
abstract interface class ICategoriesRepository {
  BehaviorSubject<List<Category>> get categories;

  Future<void> create(Category category);
  Future<void> update(Category category);
  Future<void> delete(int id);

  void dispose();
}
