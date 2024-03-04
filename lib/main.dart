import 'package:device_preview/device_preview.dart';
import 'package:expense_tracker/config/theme/theme_data.dart';
import 'package:expense_tracker/expense.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme.copyWith(
        cardTheme: CardTheme(
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle().copyWith(fontWeight: FontWeight.bold),
          bodySmall: TextStyle().copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      darkTheme: darkTheme,
      home: Expenses(),
    );
  }
}
