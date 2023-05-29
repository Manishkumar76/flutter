import 'package:application/IntroPage.dart';
import 'package:application/Item_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         textTheme: TextTheme(
           headline1:TextStyle(fontSize: 40,fontWeight:FontWeight.w900 ,color: Colors.black,fontStyle: FontStyle.italic),
           subtitle1: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),
         ),
        primarySwatch: Colors.purple,
      ),
      home: IntroPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var data= ['Manish','Ankul','Gurwinder',"Kumar","Rajesh","Rajan","Rohan","Mohan",'Manish','Ankul','Gurwinder',"Kumar","Rajesh","Rajan","Rohan","Mohan",'Manish','Ankul','Gurwinder',"Kumar","Rajesh","Rajan","Rohan","Mohan",'Manish','Ankul','Gurwinder',"Kumar","Rajesh","Rajan","Rohan","Mohan"];


    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Container(
               width: double.infinity,
               height: double.infinity,
               color: Colors.blue.shade100,
          child:InkWell(
            child:Container(

                child: CircleAvatar(child:Icon(Icons.account_balance,size: 300,))),
          onTap: (){
            Navigator.push( context,MaterialPageRoute(builder: (context)=>ItemPage()));

      },
          )

        // child:  ListTile(
        // leading:Icon(Icons.lock),
        // title:Column(
        //   children: [
        //
        // //     TextField(
        // //      decoration: InputDecoration(
        // //        focusedBorder: OutlineInputBorder (
        // // borderRadius: BorderRadius.circular(11),
        // //   borderSide: BorderSide(
        // //     color:Colors.deepOrange,
        // //   ),
        // //        ),
        // //        enabledBorder:  OutlineInputBorder (
        // //          borderRadius: BorderRadius.circular(11),
        // //          borderSide: BorderSide(
        // //            color:Colors.blue,
        // //          ),
        // //      ),
        // //     ),)
        //   ],
        // ),
      // ),
      // ),

//           ListView.builder(
//             itemBuilder: (context,index){
//             return
//
//               Container(
//               decoration: BoxDecoration(border: Border.all(width:1,color: Colors.purpleAccent),borderRadius: BorderRadius.circular(21),
// boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 31,spreadRadius: 1,)]
//               ),
//               margin: const EdgeInsets.only(top:20),
//               child: ListTile(
//                 leading: Icon(Icons.account_circle,size: 60,) ,
//                 title: Text(data[index],style: Theme.of(context).textTheme.headline1,),
//                 subtitle:  Text("student",style: Theme.of(context).textTheme.subtitle1),
//                 trailing:InkWell( child:const Icon(Icons.add,size: 60,),
//                   onTap: (){
//                   print("add the friend");
//                 },
//                 onDoubleTap: (){
//                   print("double tapped");
//                 },),
//               ),);
//             //   Padding(
//             //   padding: const EdgeInsets.all(8.0),
//             //   child: Container(
//             //     decoration: BoxDecoration(
//             //         border:Border.all(color: Colors.purpleAccent,width: 2),borderRadius: BorderRadius.circular(11)),
//             //     child: Row(
//             //       children: [
//             //         Padding(
//             //           padding: const EdgeInsets.all(3),
//             //           child: Container(
//             //               width: 30,
//             //               height: 30,
//             //               child: Image.asset('assets/images/instagram.png'),
//             //               ),
//             //         ),
//             //         Padding(
//             //           padding: const EdgeInsets.all(4),
//             //           child: Text(data[index],style: const TextStyle(fontSize: 40,fontWeight:FontWeight.w900 ,color: Colors.pink),),
//             //         ),
//             //         Padding(padding: const EdgeInsets.all(6),
//             //         child: InkWell(
//             //           onTap: (){
//             //             print("unlocked");
//             //           },
//             //           onDoubleTap: (){
//             //             print("double tab");
//             //           },
//             //           child: Container(
//             //             width: 30,
//             //             height:30,
//             //             child: Image.asset('assets/images/unlock.png'),),
//             //         ),)
//             //       ],
//             //     ),
//             //   ),
//             // ),
//             // );
//           },
//           itemCount: 20,
//             itemExtent: 400,),
         ),

    );
  }
}
