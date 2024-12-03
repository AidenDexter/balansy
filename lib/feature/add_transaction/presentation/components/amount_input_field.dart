import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AmountInputField extends StatefulWidget {
  const AmountInputField({super.key});

  @override
  _AmountInputFieldState createState() => _AmountInputFieldState();
}

class _AmountInputFieldState extends State<AmountInputField> {
  final TextEditingController _controller = TextEditingController();

  // Форматирование введённого текста как денежной суммы
  final TextInputFormatter _currencyFormatter = FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'));

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Enter Amount',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _controller,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [_currencyFormatter],
          decoration: const InputDecoration(
            labelText: 'Amount',
            border: OutlineInputBorder(),
            prefixText: r'$ ',
          ),
        ),
      ],
    );
  }
}
