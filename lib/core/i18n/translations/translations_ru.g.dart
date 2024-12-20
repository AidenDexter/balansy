///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsRu = Translations; // ignore: unused_element

class Translations implements BaseTranslations<AppLocale, Translations> {
  /// Returns the current translations of the given [context].
  ///
  /// Usage:
  /// final t = Translations.of(context);
  static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
      : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.ru,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        );

  /// Metadata for the translations of <ru>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final Translations _root = this; // ignore: unused_field

  // Translations
  String get search => 'Поиск';
  String get clear => 'Очистить';
  String get delete => 'Удалить';
  String get add => 'Добавить';
  String get editCategory => 'Добавить категорию';
  String get save => 'Сохранить';
  String get yes => 'Да';
  String get no => 'Нет';
  String get addDescription => 'Добавить описание';
  String get myTransactions => 'Мои транзакции';
  String get transaction => 'Транзакция';
  String get statistic => 'Статистика';
  String get income => 'Доходы';
  String get expense => 'Расходы';
  String get category => 'Категория';
  String get newCategory => 'Новая категория';
  String get allCategories => 'Все категории';
  String get amount => 'Сумма';
  String get currency => 'Валюта';
  String get description => 'Описание';
  String get paymentMethod => 'Способ оплаты';
  String get aboutApp => 'О приложении';
  String get availableBalance => 'Доступная сумма';
  String get limitHasBeenExceeded => 'Превышен установленный лимит';
  String youCanSpendX({required Object amount}) => 'Вы можете потратить ${amount}';
  String get totalBalance => 'Общий баланс';
  String get title => 'Заголовок';
  String todayIsXAndYouSpentX({required Object todaysDate, required Object spentAmount}) =>
      'Сегодня ${todaysDate} и вы потратили: ${spentAmount}';
  String get daily => 'За день';
  String get monthly => 'За месяц';
  String get yearly => 'За год';
  String get welcome => 'Добро пожаловать';
  String problemToShowX({required Object state}) => 'Проблема с отображением: ${state}';
  String get availablePrice => 'Доступная цена';
  String get cancel => 'Отмена';
  String get categoriesForm => 'Форма категорий';
  String get writeACategory => 'Напишите категорию';
  String get writeADescription => 'Напишите описание';
  String get expensesByCategories => 'Расходы по категориям';
  String get categories => 'Категории';
  String get updateTransaction => 'Обновить транзакцию';
  String get addTransaction => 'Добавить транзакцию';
  String get selectCategory => 'Выберите категорию';
  String get pleaseFillAllFields => 'Пожалуйста, заполните все поля';
  String get create => 'Создать';
  String get date => 'Дата';
  String get selectDate => 'Выберите дату';
}
