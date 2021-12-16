import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class AudioWidget extends StatefulWidget {
  const AudioWidget({Key? key}) : super(key: key);

  @override
  _AudioWidgetState createState() => _AudioWidgetState();
}

class _AudioWidgetState extends State<AudioWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController iconController;

  bool isAnimated = false;
  bool showPlay = true;
  bool showPause = false;

  AssetsAudioPlayer player = AssetsAudioPlayer();

  @override
  void initState() {
    super.initState();

    iconController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );

    player.open(Audio('assets/audios/audio1.mp3'),
        autoStart: false, showNotification: true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Audio Kosakata",
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 15,
              fontWeight: FontWeight.w800,
            ),
          ),
          GestureDetector(
            onTap: () {
              animatedIcon();
            },
            child: AnimatedIcon(
              icon: AnimatedIcons.play_pause,
              progress: iconController,
              size: 40,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  void animatedIcon() {
    setState(() {
      isAnimated = !isAnimated;
      isAnimated ? iconController.forward() : iconController.reverse();

      if (isAnimated) {
        iconController.forward();
        player.play();
      } else {
        iconController.reverse();
        player.pause();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
