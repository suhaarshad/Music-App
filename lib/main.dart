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

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.stretch ,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: (){
                  playSound(1);
                },
                color: Colors.blue,
                child: Text('click me') ,
              ),

              MaterialButton(
                onPressed: (){
                  playSound(2);
                },
                color: Colors.red,
                child: Text('click me') ,
              ),

              MaterialButton(
                onPressed: (){
                  playSound(3);
                },
                color: Colors.orange,
                child: Text('click me') ,
              ),

              MaterialButton(
                onPressed: (){
                  playSound(4);
                },
                color: Colors.pink[300],
                child: Text('click me') ,
              ),

              MaterialButton(
                onPressed: (){
                  playSound(5);
                },
                color: Colors.purple,
                child: Text('click me') ,
              ),

              MaterialButton(
                onPressed: (){
                  playSound(6);
                },
                color: Colors.yellow,
                child: Text('click me') ,
              ),

              MaterialButton(
                onPressed: (){
                  playSound(7);
                },
                color: Colors.green,
                child: Text('click me') ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
