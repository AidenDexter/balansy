// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../../core/constants/db_fields.dart';

class Category {
  final int? id;
  final String title;
  final String description;

  const Category({
    this.id,
    this.description = '',
    this.title = '',
  });

  // Преобразование объекта Category в Map для сохранения в DB
  Map<String, Object?> toMap() {
    return {
      DBFields.categoryTitle: title,
      DBFields.categoryDescription: description,
    };
  }

  // Преобразование из Map в объект Category
  factory Category.fromMap(Map<String, Object?> map) {
    return Category(
      id: map[DBFields.categoryId] as int? ?? 0, // Безопасное извлечение данных
      title: map[DBFields.categoryTitle] as String? ?? '',
      description: map[DBFields.categoryDescription] as String? ?? '',
    );
  }

  Category copyWith({
    int? id,
    String? title,
    String? description,
  }) {
    return Category(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }
}
