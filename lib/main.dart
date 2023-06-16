import 'package:aden/routes/app_pages.dart';
import 'package:aden/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdenApp());
}

class AdenApp extends StatelessWidget {
  const AdenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aden App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: AppRoutes.SPLASH,
      routes: AppPages.routes,
    );
  }
}