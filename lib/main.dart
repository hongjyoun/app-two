import 'package:app_two/screens/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const AppTwo());
}

class AppTwo extends StatelessWidget {
  const AppTwo({super.key});

  @override
  Widget build(BuildContext context) {
    // 가로 방향을 허용하지 않고 세로 방향만 허용
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

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
