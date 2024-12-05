class SQFLiteConstants {
  // Константы для транзакций
  static const transactionTableName = 'transaction';
  static const trAmountColumnName = 'amount';
  static const trIdColumnName = 'id';
  static const trCategoryIdColumnName = 'categoryId';
  static const trTypeColumnName = 'type';
  static const trDescriptionColumnName = 'description';
  static const trDateColumnName = 'date';

  // Константы для категорий
  static const categoryTableName = 'category';
  static const ctgIdColumnName = 'id';
  static const ctgTitleColumnName = 'title';
  static const ctgDescriptionColumnName = 'description';
  static const ctgStatusColumnName = 'status';
}
