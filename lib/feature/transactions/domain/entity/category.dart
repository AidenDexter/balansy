// ignore_for_file: public_member_api_docs, sort_constructors_first
class Category {
  final int id;
  final String title;
  final String description;

  const Category({
    this.id = 0,
    this.title = '',
    this.description = '',
  });

  // Преобразование объекта Category в Map для сохранения в DB
  Map<String, Object> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
    };
  }

  // Преобразование из Map в объект Category
  factory Category.fromMap(Map<String, Object?> map) {
    return Category(
      id: map['id'] as int? ?? 0, // Безопасное извлечение данных
      title: map['title'] as String? ?? '',
      description: map['description'] as String? ?? '',
    );
  }
}
