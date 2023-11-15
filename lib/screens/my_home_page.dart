import 'package:app_two/constants/gaps.dart';
import 'package:app_two/constants/sizes.dart';
import 'package:app_two/screens/cat_sound_screen.dart';
import 'package:app_two/widgets/main_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void _onTapStart(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => const CatSoundScreen(),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0E2C6),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FractionallySizedBox(
              widthFactor: 1,
              child: MainTitle(),
            ),
            Gaps.v40,
            CupertinoButton(
              color: const Color(0xFFE37D7D),
              borderRadius:
                  const BorderRadius.all(Radius.circular(Sizes.size48)),
              onPressed: () => _onTapStart(context),
              child: const Text(
                "시작하기",
                style: TextStyle(
                  fontSize: Sizes.size24,
                  fontFamily: 'SeoulHangangEB',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
