import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/routing/app_router.dart';
import 'package:flutter_advanced_app/doc_app.dart';

import 'core/di/dependecy_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  runApp( DocApp(appRouter: AppRouter(),));
}

