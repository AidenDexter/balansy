import 'app_localization.g.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get search => 'Поиск';

  @override
  String get clear => 'Очистить';

  @override
  String get delete => 'Удалить';

  @override
  String get add => 'Добавить';

  @override
  String get save => 'Сохранить';

  @override
  String get yes => 'Да';

  @override
  String get no => 'Нет';

  @override
  String get add_description => 'Добавить описание';

  @override
  String get my_transactions => 'Мои транзакции';

  @override
  String get transaction => 'Транзакция';

  @override
  String get statistic => 'Статистика';

  @override
  String get income => 'Доходы';

  @override
  String get expense => 'Расходы';

  @override
  String get category => 'Категория';

  @override
  String get new_category => 'Новая категория';

  @override
  String get all_categories => 'Все категории';

  @override
  String get amount => 'Сумма';

  @override
  String get currency => 'Валюта';

  @override
  String get description => 'Описание';

  @override
  String get payment_method => 'Способ оплаты';

  @override
  String get about_app => 'О приложении';

  @override
  String get available_balance => 'Доступная сумма';

  @override
  String get limit_has_been_exceeded => 'Превышен установленный лимит';

  @override
  String you_can_spend(Object amount) {
    return 'Вы можете потратить $amount';
  }

  @override
  String today_is_x_and_you_spent_x(Object spent_amount, Object todays_date) {
    return 'Сегодня $todays_date и вы потратили: $spent_amount';
  }

  @override
  String get daily => 'За день';

  @override
  String get monthly => 'За месяц';

  @override
  String get yearly => 'За год';
}
