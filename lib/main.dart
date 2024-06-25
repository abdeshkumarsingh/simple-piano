import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

Future<void> playSound(int a) async {
  int note = a;
  final player = AudioPlayer();
  await player.play(AssetSource('note$note.wav'));
}

Expanded buildKey({required int sound, required Color color}){
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero, // Removes the default padding
      ),
      onPressed: () async {
        playSound(sound);
      },
      child: Container(
        color: color,
      ),
    ),
  );

}
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(
       backgroundColor: Colors.black,
       body: SafeArea(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             buildKey(sound: 4, color: Colors.red),
             buildKey(sound: 1, color: Colors.pinkAccent),
             buildKey(sound: 2, color: Colors.deepOrangeAccent),
             buildKey(sound: 3, color: Colors.lime),
             buildKey(sound: 5, color: Colors.yellow),
             buildKey(sound: 6, color: Colors.tealAccent),
             buildKey(sound: 7, color: Colors.teal),
           ],
         ),
       ),
     ),
    );
  }
}

