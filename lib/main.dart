import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MusicApp());
}

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  void playSound(int soundNum){
    final sound = AudioPlayer();
    sound.play(AssetSource('note$soundNum.wav'));
  }
   Expanded buttons({required Color color,required int soundNum}){
     return Expanded(
       child: MaterialButton(
         color: color,
         onPressed: (){
           playSound(soundNum);
         },
         // color: Colors.blue,
       ),
     );
    
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buttons(color:Colors.red,soundNum:1),
            buttons(color:Colors.yellow,soundNum:2),
            buttons(color:Colors.orange,soundNum:3),
            buttons(color:Colors.pink,soundNum:4),
            buttons(color:Colors.purple,soundNum:5),
            buttons(color:Colors.blue,soundNum:6),
            buttons(color:Colors.green,soundNum:7),
          ],
        ),
      ),
    );
  }
}
