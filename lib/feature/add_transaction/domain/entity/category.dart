// ignore_for_file: public_member_api_docs, sort_constructors_first
class Category {
  int id;
  String title;
  String description;
  int status;
  Category({
    this.id = 0,
    this.title = '',
    this.description = '',
    this.status = 0,
  });

  // Преобразование объекта Category в Map для сохранения в DB
  Map<String, Object> categoryMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'status': status,
    };
  }

  // Преобразование из Map в объект Category
  factory Category.fromMap(Map<String, Object?> map) {
    return Category(
      id: map['id'] as int? ?? 0, // Безопасное извлечение данных
      title: map['title'] as String? ?? '',
      description: map['description'] as String? ?? '',
      status: map['status'] as int? ?? 0,
    );
  }
}
