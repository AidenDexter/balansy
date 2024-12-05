part of '../add_transaction_page.dart';

class TransactionTypeWidget extends StatelessWidget {
  final ValueNotifier<TransactionType> transactionTypeController;
  const TransactionTypeWidget({
    required this.transactionTypeController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: transactionTypeController,
        builder: (context, transactionType, _) {
          return Row(
              children: TransactionType.values
                  .map(
                    (type) => Expanded(
                      child: GestureDetector(
                        onTap: () {
                          transactionTypeController.value = type;
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          color: transactionType == type ? Colors.amber : Colors.transparent,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Text(
                                type.name.toUpperCase(),
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList());
        });
  }
}
