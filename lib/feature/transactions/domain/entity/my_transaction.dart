import '../../../../core/constants/db_fields.dart';

class MyTransaction {
  final int? id;
  final TransactionType type;
  final int categoryId;
  final double amount;
  final String description;
  final DateTime date;

  MyTransaction({
    required this.type,
    required this.date,
    required this.description,
    required this.amount,
    required this.categoryId,
    this.id,
  });

  Map<String, Object?> toMap() {
    return {
      DBFields.transactionType: type.name,
      DBFields.transactionCategoryId: categoryId,
      DBFields.transactionAmount: amount,
      DBFields.transactionDescription: description,
      DBFields.transactionDate: date.toIso8601String(),
    };
  }

  factory MyTransaction.fromMap(Map<String, Object?> map) {
    return MyTransaction(
      id: map[DBFields.transactionId] as int?,
      type: TransactionType.values.byName(map[DBFields.transactionType]! as String),
      categoryId: map[DBFields.transactionCategoryId]! as int,
      amount: map[DBFields.transactionAmount]! as double,
      description: map[DBFields.transactionDescription]! as String,
      date: DateTime.parse(map[DBFields.transactionDate]! as String),
    );
  }

  MyTransaction copyWith({
    int? id,
    TransactionType? type,
    int? categoryId,
    String? categoryName,
    double? amount,
    String? description,
    DateTime? date,
  }) {
    return MyTransaction(
      id: id ?? this.id,
      type: type ?? this.type,
      categoryId: categoryId ?? this.categoryId,
      amount: amount ?? this.amount,
      description: description ?? this.description,
      date: date ?? this.date,
    );
  }
}

enum TransactionType {
  income(title: 'income'),
  expense(title: 'expense');

  final String title;
  const TransactionType({required this.title});
}
