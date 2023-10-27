  import 'dart:math'as math;
import 'package:flutter/material.dart';


// animated builder

void main(){
  runApp(myapp());  
} 
class myapp extends StatefulWidget {
  const myapp({Key  ?key}):super(key:key );

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> with  TickerProviderStateMixin {
  late  final AnimationController _controller = AnimationController(
    duration:const Duration(seconds: 10),
    vsync: this,
    )..repeat();
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        child: const FlutterLogo(size: 100,),
        builder:  (BuildContext context,  Widget? child) {  
          return Transform.rotate(angle: _controller.value *3.3 *math.pi,
          child: child, );  
          
        }),
      );
    
  }
}

