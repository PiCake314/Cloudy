


import 'package:cloudy/Game/Game.dart';
import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flame/parallax.dart';

class Background extends ParallaxComponent<Cloudy>{
  final String time;
  Background({required this.time});

  @override
  Future<void> onLoad() async{
    if(time == "Night"){
      parallax = await gameRef.loadParallax(
        [
          ParallaxImageData("Parallax/Night/PixelSky_layer01.png"),
          ParallaxImageData("Parallax/Night/PixelSky_layer02.png"),
          ParallaxImageData("Parallax/Night/PixelSky_layer03.png"),
        ],

        baseVelocity: Vector2(10, 0),
        velocityMultiplierDelta: Vector2(1.5, 0),
      ); 
    }
    else{
      parallax = await gameRef.loadParallax(
        [
          ParallaxImageData("Parallax/Day/PixelSky_layer01.png"),
          ParallaxImageData("Parallax/Day/PixelSky_layer02.png"),
          ParallaxImageData("Parallax/Day/PixelSky_layer03.png"),
        ],

        baseVelocity: Vector2(100, 0),
      );
    }
  }
}