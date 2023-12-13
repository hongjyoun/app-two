import 'package:app_two/constants/gaps.dart';
import 'package:app_two/constants/sizes.dart';
import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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
          "고양이 소리로 고양이를 불러보자",
          style: TextStyle(
            color: Color.fromARGB(255, 89, 102, 95),
            fontSize: Sizes.size20,
            fontFamily: 'SeoulHangangB',
            letterSpacing: 0.2,
          ),
        ),
      ],
    );
  }
}
