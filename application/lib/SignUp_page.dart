import 'package:flutter/material.dart';
// import 'package:application/Item_page.dart';
class SignUP extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:AppBar(
       title: Text('Sign up'),
     ),
     body: Center(
       child: Container(
           width: double.infinity,
           height: double.infinity,
           // color: Colors.grey.shade200,
         child: Column(
           children: [
             Container(child:
             Text("Sign Up",style: TextStyle(fontSize: 40,fontWeight:FontWeight.w900,),),
             ),
             SizedBox(
               height: 55,
             ),


             Padding(padding: EdgeInsets.all(8.0),
               child: TextField(

                 decoration: InputDecoration(
                   prefixIcon:Icon(Icons.email),
                   suffix:Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text('@gmail.com',style: TextStyle(fontSize:20,fontWeight: FontWeight.w500 ),),
                   ),
                 ),
               ),
             )
           ],
         ),
       ),
     ) ,
   );
  }

}