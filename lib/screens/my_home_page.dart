import 'package:app_two/widgets/main_title.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF0E2C6),
      body: SafeArea(
        child: FractionallySizedBox(
          widthFactor: 1,
          child: MainTitle(),
        ),
      ),
    );
  }
}
