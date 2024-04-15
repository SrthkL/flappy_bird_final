import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flappy_bird_final/game/assets.dart';
import 'package:flappy_bird_final/game/flappy_bird_game.dart';
import 'package:flutter/material.dart';
class MainMenuScreen extends StatelessWidget{
  final FlappyBirdGame game;
  static const String id ='mainmenu';
  const MainMenuScreen({
    Key? key,
    required this.game,
  }): super(key: key);

  @override 
  Widget build(BuildContext context){
    game.pauseEngine();
    return Scaffold(
      body:GestureDetector(
        onTap: (){
          game.overlays.remove('mainMenu');
          game.resumeEngine();
        },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.menu)
          ),
        ),
        child: Image.asset(Assets.message),

      )
      )
    );


  }
}