import 'package:app_two/constants/gaps.dart';
import 'package:app_two/constants/sizes.dart';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                  Gaps.h12,
                  Column(
                    children: [
                      Gaps.v10,
                      Text(
                        "이리오냥",
                        style: TextStyle(
                          color: Color(0xFFE37D7D),
                          fontSize: Sizes.size40,
                          fontFamily: 'SeoulHangangEB',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Gaps.v10,
              Text(
                "고양이로 고양이를 불러보자",
                style: TextStyle(
                  color: Color(0xFFA7B9B0),
                  fontSize: Sizes.size20,
                  fontFamily: 'SeoulHangangB',
                  letterSpacing: 0.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
