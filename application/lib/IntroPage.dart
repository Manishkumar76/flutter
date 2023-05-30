import 'dart:async';

import 'package:application/Item_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget{
  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  
  @override
  void initState() {
    super.initState();
    
    Timer(Duration( seconds: 2),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ItemPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
       body:AnimatedContainer(
         duration: Duration(seconds: 5),

        color: Colors.blueAccent,
        child: Center(child: Text("welcome",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w900,
        ),
        )
        ),
      ),

    );
  }
}