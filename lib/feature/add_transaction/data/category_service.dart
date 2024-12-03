import 'package:flutter/material.dart';

import '../domain/entity/category.dart';
import 'repository/category_repository.dart';

class CategoryService {
  final CategoryRepository _repository;

  CategoryService(this._repository);

  // Future<int> saveCategory(Category category) async {
  //   return _repository.insertData('categories', category.categoryMap());
  // }
}
