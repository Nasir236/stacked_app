import 'package:flutter/material.dart';
import 'package:stacked_app/app/app.locator.dart';
import 'package:stacked_app/screen/home/home.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeView());
  }
}
