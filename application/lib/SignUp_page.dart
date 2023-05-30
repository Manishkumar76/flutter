import 'package:flutter/material.dart';
// import 'package:application/Item_page.dart';
class SignUP extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:AppBar(

     ),

     body: SafeArea(
       child: Center(
         child: Container(

             width: double.infinity,
             height: double.infinity,
             color: Colors.grey.shade300,
           child: SingleChildScrollView(
             child: Container(
               margin: EdgeInsets.all(10.1),
               child: Column(
                 children: [
                   SizedBox(
                    height: 70,
                   ),
                   Center(
                     child: Container(
                       height: 100,
                       child:
                     Center(child: Text("Sign Up",style: TextStyle(fontSize: 40,fontWeight:FontWeight.w900,),)),
                     ),
                   ),
                   SizedBox(
                     height: 25,
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: TextField(
                       decoration: InputDecoration(
                         focusedBorder:OutlineInputBorder(
                             borderRadius: BorderRadius.circular(11),
                             borderSide: BorderSide(color: Colors.orange)
                         ),
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(11),

                         ),
                         prefixIcon: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text('Full Name : ',style: TextStyle(fontSize:20,fontWeight: FontWeight.w500 ),),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     height: 15,
                   ),
                   Padding(padding: EdgeInsets.all(10.0),
                     child: TextField(

                       decoration: InputDecoration(
                         focusedBorder:OutlineInputBorder(
                             borderRadius: BorderRadius.circular(11),
                             borderSide: BorderSide(color: Colors.orange)
                         ),
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(11),

                         ),
                         prefixIcon:Icon(Icons.email_sharp,color: Colors.black,),
                         suffixIcon:Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text('@gmail.com',style: TextStyle(fontSize:20,fontWeight: FontWeight.w500 ),),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     height: 15,
                   ),
                   Padding(padding: EdgeInsets.all(10.0),
                     child: TextField(

                       decoration: InputDecoration(
                         focusedBorder:OutlineInputBorder(
                             borderRadius: BorderRadius.circular(11),
                             borderSide: BorderSide(color: Colors.orange)
                         ),
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(11),

                         ),
                         prefixIcon:Container(
                           width: 90,
                           child: Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Icon(Icons.call,color: Colors.black,),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Text('+91',style: TextStyle(fontSize:20,fontWeight: FontWeight.w400 ),),
                               ),

                             ],
                           ),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     height: 15,
                   ),

                 ],
               ),
             ),
           ),
         ),
       ),
     ) ,
   );
  }

}