import 'package:application/main.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('intro'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("Welcome",style: TextStyle(fontSize: 40,fontWeight:FontWeight.w500,),),
          SizedBox(
            height: 11,
          ),
          ElevatedButton(onPressed: (){

            Navigator.push(context,MaterialPageRoute(builder: (context)=> MyHomePage(title:"home",),
            ));
          }, child: Text("Next"))
          ],
        ),
      ),
    );
  }
  
}