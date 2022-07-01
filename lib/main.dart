import 'package:flutter/material.dart';
import 'package:flutter_bloc_app/App/counter_page.dart';
import 'package:flutter_bloc_app/App/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     // home: const CounterPage(),
      home: const CounterScreen(),
    );
  }
}

