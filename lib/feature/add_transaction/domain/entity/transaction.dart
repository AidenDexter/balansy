class Transaction {
  Transaction({
    required this.type,
    required this.date,
    required this.name,
    required this.category,
    required this.amount,
  });

  final String name;
  final String category;
  final double amount;
  final DateTime date;
  final TransactionType type;
}

enum TransactionType {
  expense,
  income,
}
