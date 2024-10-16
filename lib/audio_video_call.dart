
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class AudioVideoCall extends StatelessWidget {
  AudioVideoCall({super.key});

  final String userID = Random().nextInt(1000).toString();

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
        appID: 1175988419,
        appSign:
        '3b5e157515193cf9ff723175590d972db363e95180220c61712ac637dab05059',
        callID: 'id_123',
        userID: 'user_$userID',
        userName: 'user_$userID',
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall());
  }
}
