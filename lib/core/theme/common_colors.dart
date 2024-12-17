part of 'app_theme.dart';

class CommonColors {
  // Поля
  final Color backgroundMain;
  final Color textPrimaryWhite;
  final Color textSecondary;
  final Color textError;

  final Color controlPrimary;
  final Color cardDefault;
  final Color cardCurrent;
  final Color cardActive;

  // Конструктор
  const CommonColors({
    this.backgroundMain = const Color(0xff141326),
    this.textPrimaryWhite = const Color(0xffFFFFFF),
    this.textSecondary = const Color(0xffE3B53C),
    this.textError = const Color(0xffFF6258),
    this.controlPrimary = const Color(0xff23203F),
    this.cardDefault = const Color(0xffF8F8F8),
    this.cardCurrent = const Color(0xffE33C3C),
    this.cardActive = const Color(0xffE3823C),
  });
}
