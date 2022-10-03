import 'package:cloudy/Game/Game.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  // await Flame.device.fullScreen();
  await Flame.device.setLandscape();

  FlameGame MyGame = Cloudy();
  runApp(GameWidget(game: MyGame));
}