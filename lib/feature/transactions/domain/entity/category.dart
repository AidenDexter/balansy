import 'dart:convert';

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
    return <String, Object?>{
      'id': id,
      'title': title,
      'description': description,
    };
  }

  // Преобразование из Map в объект Category
  factory Category.fromMap(Map<String, Object?> map) {
    return Category(
      id: map['id'] as int?,
      title: map['title']! as String,
      description: map['description']! as String,
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

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) => Category.fromMap(json.decode(source) as Map<String, Object?>);
}
