import 'package:flutter/material.dart';

import 'core/services/service_locator/service_locator.dart';
import 'feature/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const App());
}
