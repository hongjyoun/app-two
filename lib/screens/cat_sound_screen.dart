import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class CatSoundScreen extends StatefulWidget {
  const CatSoundScreen({super.key});

  @override
  State<CatSoundScreen> createState() => _CatSoundScreenState();
}

class _CatSoundScreenState extends State<CatSoundScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  void _playSound() {
    String soundPath = 'sounds/cat_sound.mp3';
    _audioPlayer.play(AssetSource(soundPath));
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
            child: Column(
              children: [
                const Text("뚱냥이 1"),
                GestureDetector(
                  onTap: _playSound,
                  child: const Image(
                    image: AssetImage('assets/images/cat1.png'),
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
