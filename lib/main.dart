import 'package:app_two/screens/my_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppTwo());
}

class AppTwo extends StatelessWidget {
  const AppTwo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cat App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
