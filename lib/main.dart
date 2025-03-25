import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'view/home_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: HomePage(),
    );
  }
}


