

import 'dart:ui';

import 'package:cloudy/BG/Background.dart';
import 'package:flame/game.dart';
import 'package:flutter/scheduler.dart';

class Cloudy extends FlameGame{
  // Cloudy(){
  // }


  @override
  Future<void> onLoad() async{
    var brightness = SchedulerBinding.instance!.window.platformBrightness;
    String time = brightness == Brightness.dark? "Night" : "Day";
    add(Background(time: time));


  }
}