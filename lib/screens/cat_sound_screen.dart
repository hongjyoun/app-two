import 'package:app_two/constants/gaps.dart';
import 'package:app_two/constants/sizes.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class CatSoundScreen extends StatefulWidget {
  const CatSoundScreen({super.key});

  @override
  State<CatSoundScreen> createState() => _CatSoundScreenState();
}

class _CatSoundScreenState extends State<CatSoundScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  final Map<String, double> _sizes = {
    "cat1": 250,
    "cat2": 250,
    "cat3": 250,
    "cat4": 250,
  };
  final Map<String, double> _positionsTop = {
    "cat1": -90,
    "cat2": 40,
    "cat3": 200,
    "cat4": 200,
  };
  final Map<String, double> _positionsLeft = {
    "cat1": -100,
    "cat2": 40,
    "cat3": 100,
    "cat4": -70,
  };

  double _getPositionTop(screenHeight, key) {
    return (screenHeight / 2) + _positionsTop[key] - (_sizes[key]! / 2);
  }

  double _getPositionLeft(screenWidth, key) {
    return (screenWidth / 2) + _positionsLeft[key] - (_sizes[key]! / 2);
  }

  void _playSound(index) {
    String soundPath = 'sounds/cat_sound_$index.mp3';
    _audioPlayer.play(AssetSource(soundPath));
  }

  void _makeSmall(context, index) {
    _sizes["cat$index"] = 230;
    _positionsTop["cat$index"] = _positionsTop["cat$index"]! + 5;
    _positionsLeft["cat$index"] = _positionsLeft["cat$index"]! + 5;
    setState(() => {});
  }

  void _makeBig(context, index) {
    _sizes["cat$index"] = 250;
    _positionsTop["cat$index"] = _positionsTop["cat$index"]! - 5;
    _positionsLeft["cat$index"] = _positionsLeft["cat$index"]! - 5;
    setState(() => {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Stack(
              children: [
                Positioned(
                  top: 20,
                  left: (MediaQuery.of(context).size.width / 2) -
                      ((MediaQuery.of(context).size.width - 40) / 2),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0E2C6),
                      borderRadius: BorderRadius.circular(Sizes.size28),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/icon_cat.png'),
                        ),
                        Gaps.h16,
                        Text(
                          "고양이를 터치하면 소리가 나와요!",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: Sizes.size18,
                            fontFamily: 'SeoulHangangEB',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: _getPositionTop(
                      MediaQuery.of(context).size.height, "cat1"),
                  left: _getPositionLeft(
                      MediaQuery.of(context).size.width, "cat1"),
                  child: GestureDetector(
                    onTap: () => _playSound(1),
                    onTapDown: (details) => _makeSmall(details, 1),
                    onTapUp: (details) => _makeBig(details, 1),
                    child: Image(
                      width: _sizes["cat1"],
                      image: const AssetImage('assets/images/cat1.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: _getPositionTop(
                      MediaQuery.of(context).size.height, "cat2"),
                  left: _getPositionLeft(
                      MediaQuery.of(context).size.width, "cat2"),
                  child: GestureDetector(
                    onTap: () => _playSound(2),
                    onTapDown: (details) => _makeSmall(details, 2),
                    onTapUp: (details) => _makeBig(details, 2),
                    child: Image(
                      width: _sizes["cat2"],
                      image: const AssetImage('assets/images/cat3.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: _getPositionTop(
                      MediaQuery.of(context).size.height, "cat3"),
                  left: _getPositionLeft(
                      MediaQuery.of(context).size.width, "cat3"),
                  child: GestureDetector(
                    onTap: () => _playSound(3),
                    onTapDown: (details) => _makeSmall(details, 3),
                    onTapUp: (details) => _makeBig(details, 3),
                    child: Image(
                      width: _sizes["cat3"],
                      image: const AssetImage('assets/images/cat2.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: _getPositionTop(
                      MediaQuery.of(context).size.height, "cat4"),
                  left: _getPositionLeft(
                      MediaQuery.of(context).size.width, "cat4"),
                  child: GestureDetector(
                    onTap: () => _playSound(4),
                    onTapDown: (details) => _makeSmall(details, 4),
                    onTapUp: (details) => _makeBig(details, 4),
                    child: Image(
                      width: _sizes["cat4"],
                      image: const AssetImage('assets/images/cat4.png'),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
