import 'package:flutter/material.dart';
import 'package:project_pbb/pages.dart';
import 'package:project_pbb/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perum Jasa Tirta',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
    );
  }
}
