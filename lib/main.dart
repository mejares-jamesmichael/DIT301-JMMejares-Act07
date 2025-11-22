import 'package:flutter/material.dart';
import 'widgets/main_navigation.dart';

void main() {
  runApp(const AdvancedUINavApp());
}

class AdvancedUINavApp extends StatelessWidget {
  const AdvancedUINavApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced UI Nav App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MainNavigation(),
    );
  }
}
