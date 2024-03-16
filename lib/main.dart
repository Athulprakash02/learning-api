import 'package:flutter/material.dart';
import 'package:trogon_media/views/base%20screen/base_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 236, 242, 254)),
          scaffoldBackgroundColor: const Color.fromARGB(255, 236, 242, 254)),
      home: const BaseScreen(),
    );
  }
}
