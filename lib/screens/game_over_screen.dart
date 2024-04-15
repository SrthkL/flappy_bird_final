import 'package:flappy_bird_final/game/assets.dart';
import 'package:flappy_bird_final/game/flappy_bird_game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GameOverScreen extends StatelessWidget{
  final FlappyBirdGame game;
  static const String id = 'gameOver';
  const GameOverScreen({Key? key, required this.game}) : super(key: key);
  
  @override 
  Widget build(BuildContext context){
    return Material(
      color: Colors.black38,
      child: Center(
      child:
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(Assets.gameOver),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: onRestart,
          style: ElevatedButton.styleFrom(backgroundColor:Colors.amber),
          child: const Text(
            'Restart',
            style: TextStyle(fontSize: 20),

          ))
        ],
      ) ,)
    );
    
  }

  void onRestart(){
      game.bird.reset();
      game.overlays.remove('gameOver');
      game.resumeEngine();
    }





}