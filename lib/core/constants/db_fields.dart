class DBFields {
  // Общие имена для таблиц
  static const transactionTable = 'transactions';
  static const categoryTable = 'category';

  // Поля таблицы транзакций
  static const transactionId = 'id';
  static const transactionAmount = 'amount';
  static const transactionCategoryId = 'categoryId';
  static const transactionType = 'transactionType';
  static const transactionDescription = 'description';
  static const transactionDate = 'date';

  // Поля таблицы категорий
  static const categoryId = 'id';
  static const categoryTitle = 'title';
  static const categoryDescription = 'description';
  static const categoryStatus = 'status';
}
