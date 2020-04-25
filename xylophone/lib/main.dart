import 'package:flutter/material.dart';
import 'musicButton.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

List<Widget> xyloItems() {
  return musicList
      .map((item) => Expanded(
          child: FlatButton(
              color: item.color,
              onPressed: () {
                final player = AssetsAudioPlayer();
                player.open(
                    Audio('assets/note' + item.number.toString() + '.wav'));
              },
              child: null
              )))
      .toList();
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: xyloItems(),
          )),
        ),
      ),
    );
  }
}
