import 'package:calling_app/audio_video_call.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AudioVideoCall(),),);
        },
        child: const Center(child: Text('Tap to join call')),
      ),
    );
  }
}
