class DBFields {
  // Общие имена для таблиц
  static const transactionTable = 'transaction';
  static const categoryTable = 'category';

  // Поля таблицы транзакций
  static const transactionId = 'id';
  static const transactionAmount = 'amount';
  static const transactionCategoryId = 'categoryId';
  static const transactionType = 'type';
  static const transactionDescription = 'description';
  static const transactionDate = 'date';

  // Поля таблицы категорий
  static const categoryId = 'id';
  static const categoryTitle = 'title';
  static const categoryDescription = 'description';
  static const categoryStatus = 'status';
}
