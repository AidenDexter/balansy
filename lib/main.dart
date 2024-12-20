import 'package:flutter/material.dart';

import 'core/i18n/translations/translations.g.dart';
import 'core/services/service_locator/service_locator.dart';
import 'feature/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocaleSettings.useDeviceLocale();
  await configureDependencies();
  runApp(TranslationProvider(child: const App()));
}
