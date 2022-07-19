import 'package:flutter/material.dart';
import 'package:news_app_firbace/core/constants/theme_const.dart';
import 'package:news_app_firbace/core/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exam',
      debugShowCheckedModeBanner: false,
      theme: ThemeConst.lightTheme,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: "/home",
    );
  }
}
