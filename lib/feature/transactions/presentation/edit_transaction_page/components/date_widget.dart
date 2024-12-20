import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../core/i18n/translations/translations.g.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({
    required ValueNotifier<DateTime> selectedDateNotifier,
    super.key,
  }) : _selectedDateNotifier = selectedDateNotifier;

  final ValueNotifier<DateTime> _selectedDateNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _selectedDateNotifier,
        builder: (context, selectedDate, _) {
          return Row(
            children: [
              Expanded(
                child: Text(
                  '${t.date}: ${DateFormat.yMMMd().format(selectedDate)}',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              TextButton(
                onPressed: () async {
                  final pickedDate = await showDatePicker(
                    context: context,
                    initialDate: selectedDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (pickedDate != null && pickedDate != selectedDate) {
                    _selectedDateNotifier.value = pickedDate;
                  }
                },
                child: Text(t.selectDate),
              ),
            ],
          );
        });
  }
}
