import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  var game = FlameGame();
  runApp(GameWidget(game: game));
}