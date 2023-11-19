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
    // 소리 파일 경로
    // String soundPath = 'assets/sounds/my_sound.mp3';

    // 소리 파일을 재생
    _audioPlayer.play(UrlSource('https://example.com/my-audio.wav'));
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
                const Text("slkdfj"),
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
