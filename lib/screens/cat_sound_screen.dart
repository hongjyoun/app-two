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
    "cat1": 120,
    "cat2": 300,
    "cat3": 400,
    "cat4": 450,
  };
  final Map<String, double> _positionsLeft = {
    "cat1": 20,
    "cat2": 20,
    "cat3": 200,
    "cat4": 20,
  };

  void _playSound(index) {
    String soundPath = 'sounds/cat_sound_$index.mp3';
    _audioPlayer.play(AssetSource(soundPath));
  }

  void _makeSmall(context, index) {
    _sizes["cat$index"] = 230;
    _positionsTop["cat$index"] = _positionsTop["cat$index"]! + 10;
    _positionsLeft["cat$index"] = _positionsLeft["cat$index"]! + 10;
    setState(() => {});
  }

  void _makeBig(context, index) {
    _sizes["cat$index"] = 250;
    _positionsTop["cat$index"] = _positionsTop["cat$index"]! - 10;
    _positionsLeft["cat$index"] = _positionsLeft["cat$index"]! - 10;
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
                  top: _positionsTop["cat1"],
                  left: _positionsLeft["cat1"],
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
                  top: _positionsTop["cat2"],
                  left: _positionsLeft["cat2"],
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
                  top: _positionsTop["cat3"],
                  left: _positionsLeft["cat3"],
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
                  top: _positionsTop["cat4"],
                  left: _positionsLeft["cat4"],
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
