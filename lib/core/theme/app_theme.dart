import 'package:flutter/material.dart';

part 'animation_durations.dart';
part 'common_colors.dart';
part 'typography.dart';
part 'app_bar_theme.dart';
part 'common_text_styles.dart';
part 'app_theme_extension.dart';

const _commonColors = CommonColors();
const _typography = _Typography();
final _commonTextStyles = CommonTextStyles();
final _appBarThemes = _AppBarThemes();
const _durations = AnimationDurations();

abstract class AppTheme {
  static ThemeData get lightThemeData => _lightThemeData;
  static ThemeData get darkThemeData => _darkThemeData;
}

final ThemeData _lightThemeData = ThemeData(
  appBarTheme: _appBarThemes.light,
  useMaterial3: true,
  primaryColor: _commonColors.cardActive,
  extensions: [
    AppThemeExtension.lightThemeExtension(),
  ],
  cardColor: _commonColors.cardDefault,
);
final ThemeData _darkThemeData = ThemeData(
  appBarTheme: _appBarThemes.light,
  useMaterial3: true,
  primaryColor: _commonColors.backgroundMain,
  extensions: [
    AppThemeExtension.lightThemeExtension(),
  ],
  cardColor: _commonColors.cardDefault,
);
