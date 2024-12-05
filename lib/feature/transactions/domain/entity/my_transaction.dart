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
    required this.categoryId,
    required this.amount,
    this.id,
  });

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'type': type.name,
      'categoryId': categoryId,
      'amount': amount,
      'description': description,
      'date': date.toIso8601String(),
    };
  }

  factory MyTransaction.fromMap(Map<String, Object?> map) {
    return MyTransaction(
      id: map['id'] as int?,
      type: TransactionType.values.byName(map['type']! as String),
      date: DateTime.parse(map['date']! as String),
      description: map['description']! as String,
      categoryId: map['categoryId']! as int,
      amount: map['amount']! as double,
    );
  }
}

enum TransactionType {
  expense,
  income,
}
