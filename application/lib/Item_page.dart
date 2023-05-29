import 'package:application/main.dart';
import 'package:flutter/material.dart';
import 'package:application/SignUp_page.dart';
class ItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(''),
      // ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey.shade200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(child:
                  Text("Login",style: TextStyle(fontSize: 40,fontWeight:FontWeight.w900,),),
              ),
            SizedBox(
              height: 55,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:TextField(
                decoration: InputDecoration(
                  prefixIcon:Container(
                      width:30,
                      height: 30,
                      margin: EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/icons/man.png')),
                    // focusedBorder: OutlineInputBorder(
                    //   borderSide:BorderSide(),
                    // ),
                  //
                  suffixIcon: Text("UserName",style: TextStyle(fontWeight: FontWeight.w400,),),
                ),
                
              ),
            ),
              SizedBox(
                height: 33,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:TextField(
                  decoration: InputDecoration(
                    prefixIcon:Container(
                        width:30,
                        height: 30,
                        margin: EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/lock.png')),
                    // focusedBorder: OutlineInputBorder(
                    //   borderSide:BorderSide(),
                    // ),
                    //
                    suffixIcon:IconButton(
                      icon: Icon(Icons.remove_red_eye_sharp,color: Colors.black,),
                      onPressed: (){

                      },
                    ),
                  ),

                ),
              ),






            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> MyHomePage(title:"home",),
              ));
            }, child: Text("Next")),



                    Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('have not  account?'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextButton(onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> SignUP()));

                        }, child:Text('Sign up',style: TextStyle(fontSize:20,color: Colors.deepPurple ),) ),
                      ),
                    ],
                ),

            ],
          ),
        ),
      ),
    );
  }
  
}