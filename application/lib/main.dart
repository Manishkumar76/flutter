import 'package:application/IntroPage.dart';
// import 'package:application/Item_page.dart';
import 'package:application/Social.dart';
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
      // theme: ThemeData(
         // textTheme: const TextTheme(
         //
         //   // headline1:TextStyle(fontSize: 40,fontWeight:FontWeight.w900 ,color: Colors.black,fontStyle: FontStyle.italic),
         //   // subtitle1:TextStyle(fontSize: 20,fontStyle: FontStyle.italic),
         // ),
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.lightBlue,),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
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

  List<Post> posts = [
    Post(
      author: 'manish',
      content: 'assets/images/image1.jpg',
      likes: 10,
      comments: 2,

    ),
    Post(
      author: 'Bob',
      content: 'assets/images/image2.jpg',
      likes: 5,
      comments: 1,

    ),
    Post(
      author: 'Charlie',
      content: 'assets/images/image3.jpg',
      likes: 7,
      comments: 3,

    ),
    Post(
      author: 'Charlie',
      content: 'assets/images/image4.jpg',
      likes: 7,
      comments: 3,

    ),
    Post(
      author: 'Charlie',
      content: 'assets/images/image5.jpg',
      likes: 7,
      comments: 3,

    ),
  ];
  // List<Post> posts=[
  //   Post(
  //     author: ' ',
  //     comments:  4,
  //     content: '',
  //     likes: 3,
  //
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {

    // var data= ['Manish','Ankul','Gurwinder',"Kumar","Rajesh","Rajan","Rohan","Mohan",'Manish','Ankul','Gurwinder',"Kumar","Rajesh","Rajan","Rohan","Mohan",'Manish','Ankul','Gurwinder',"Kumar","Rajesh","Rajan","Rohan","Mohan",'Manish','Ankul','Gurwinder',"Kumar","Rajesh","Rajan","Rohan","Mohan"];


    return Scaffold(
      appBar: AppBar(
        title: Text("Social App"),
        // centerTitle: true,
        actions: <Widget>[
          Row(
            children: [
              IconButton(onPressed:(){}
                  , icon: Icon(Icons.search_sharp,size: 30,)),
              IconButton(onPressed:(){}
                  , icon: Icon(Icons.notifications,size: 30,)),
              IconButton(
                icon: Icon(Icons.menu,size: 30),
                onPressed: (){

                },
              ),
            ],
          ),
        ],
        leading: IconButton(icon: Icon(Icons.account_circle,size: 30),onPressed: (){},),
         shape:RoundedRectangleBorder(
           borderRadius: BorderRadius.only(
             bottomLeft: Radius.circular(22),
             bottomRight: Radius.circular(22),
           )
         ),
      ),
      body:

      Container(
               width: double.infinity,
               height: double.infinity,

             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextField(
                     // controller: postController,
                     decoration: InputDecoration(
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                         borderSide: BorderSide(color: Colors.purpleAccent),
                       ),
                       hintText: 'What\'s on your mind?',
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                       ),
                       suffixIcon: IconButton(
                         icon: Icon(Icons.send),
                         onPressed: (){
                         },
                       ),
                     ),
                   ),
                 ),
                 Expanded(

                   child: Container(
                     color:Colors.grey.shade300 ,
                     child: ListView.builder(
                       itemCount: posts.length,
                       itemBuilder: (context, index) {
                         // Get the post at the current index.
                         Post post = posts[index];
                         // Return a widget to display the post.
                         return Column(
                           children: [

                             Card(
                               margin: const EdgeInsets.all(8.0),
                               child: Padding(
                                 padding: const EdgeInsets.all(16.0),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     // Display the author and the content of the post.
                                     Text(
                                       '${post.author}:',
                                       style: TextStyle(fontWeight: FontWeight.bold),
                                     ),
                                     SizedBox(height: 8.0),
                                     Center(child: Image.asset(post.content)),
                                     SizedBox(height: 8.0),
                                     // Display the number of likes and comments on the post.
                                     Row(
                                       children: [
                                         Icon(Icons.thumb_up),
                                         SizedBox(width: 4.0),
                                         Text('${post.likes}'),
                                         SizedBox(width: 16.0),
                                         Icon(Icons.comment),
                                         SizedBox(width: 4.0),
                                         Text('${post.comments}'),
                                       ],
                                     ),
                                      Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: TextField(
                                           // controller: postController,
                                           decoration: InputDecoration(
                                             focusedBorder: OutlineInputBorder(
                                               borderRadius: BorderRadius.circular(20),
                                               borderSide: BorderSide(color: Colors.purpleAccent),
                                             ),
                                             hintText: 'Write a comment! ',
                                             border: OutlineInputBorder(
                                               borderRadius: BorderRadius.circular(20),
                                             ),
                                             suffixIcon: IconButton(
                                               icon: Icon(Icons.send),
                                               onPressed: (){
                                               },
                                             ),
                                           ),
                                         ),
                                       ),
                                   ],
                                 ),
                               ),

                             ),

                           ],
                         );
                       },
                     ),
                   ),
                 ),
               ],

             ),
      //     child:InkWell(
      //       child:Container(
      //
      //           child: CircleAvatar(child:Icon(Icons.account_balance,size: 300,))),
      //     onTap: (){
      //       Navigator.push( context,MaterialPageRoute(builder: (context)=>Social()));
      //
      // },
      //     )

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
