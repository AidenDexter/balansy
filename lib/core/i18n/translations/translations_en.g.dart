///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class TranslationsEn extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
      : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.en,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ),
        super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

  /// Metadata for the translations of <en>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsEn _root = this; // ignore: unused_field

  // Translations
  @override
  String get search => 'Search';
  @override
  String get clear => 'Clear';
  @override
  String get delete => 'Delete';
  @override
  String get add => 'Add';
  @override
  String get editCategory => 'Add category';
  @override
  String get save => 'Save';
  @override
  String get yes => 'Yes';
  @override
  String get no => 'No';
  @override
  String get addDescription => 'Add description';
  @override
  String get myTransactions => 'My transactions';
  @override
  String get transaction => 'Transaction';
  @override
  String get statistic => 'Statistics';
  @override
  String get income => 'Income';
  @override
  String get expense => 'Expenses';
  @override
  String get category => 'Category';
  @override
  String get newCategory => 'New category';
  @override
  String get allCategories => 'All categories';
  @override
  String get amount => 'Amount';
  @override
  String get currency => 'Currency';
  @override
  String get description => 'Description';
  @override
  String get paymentMethod => 'Payment method';
  @override
  String get aboutApp => 'About the app';
  @override
  String get availableBalance => 'Available balance';
  @override
  String get limitHasBeenExceeded => 'Limit exceeded';
  @override
  String youCanSpendX({required Object amount}) => 'You can spend ${amount}';
  @override
  String get totalBalance => 'Total balance';
  @override
  String get title => 'Title';
  @override
  String todayIsXAndYouSpentX({required Object todaysDate, required Object spentAmount}) =>
      'Today is ${todaysDate} and you spent: ${spentAmount}';
  @override
  String get daily => 'Daily';
  @override
  String get monthly => 'Monthly';
  @override
  String get yearly => 'Yearly';
  @override
  String get welcome => 'Welcome';
  @override
  String problemToShowX({required Object state}) => 'Problem to show: ${state}';
  @override
  String get availablePrice => 'Available price';
  @override
  String get cancel => 'Cancel';
  @override
  String get categoriesForm => 'Categories form';
  @override
  String get writeACategory => 'Write a category';
  @override
  String get writeADescription => 'Write a description';
  @override
  String get expensesByCategories => 'Expenses by categories';
  @override
  String get categories => 'Categories';
  @override
  String get updateTransaction => 'Update transaction';
  @override
  String get addTransaction => 'Add transaction';
  @override
  String get selectCategory => 'Select category';
  @override
  String get pleaseFillAllFields => 'Please fill all fields';
  @override
  String get create => 'Create';
  @override
  String get date => 'Date';
  @override
  String get selectDate => 'Select date';
}
