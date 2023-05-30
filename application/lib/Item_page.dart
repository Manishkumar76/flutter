import 'package:application/main.dart';
import 'package:flutter/material.dart';
import 'package:application/SignUp_page.dart';
class ItemPage extends StatefulWidget{
  @override
  State<ItemPage> createState() => _ItemPageState();

}

class _ItemPageState extends State<ItemPage> {


  @override
  Widget build(BuildContext context) {

    // var time=DateTime.now(); //todo:for getting current time
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(''),
      // ),
      body: SafeArea(
        child: Container(
              width: double.infinity,
              height: double.infinity,
              // color: Colors.grey.shade300,
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.all(10.0) ,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      // Text("time: $time"), //todo:for getting current time
                      SizedBox(height: 70,),
                       Container(child:
                        const Text("Login",style: TextStyle(fontSize: 40,fontWeight:FontWeight.w900,fontFamily:'RobotoMono'),),
                      ),
                    const SizedBox(
                      height: 44,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:TextField(
                        decoration: InputDecoration(
                          focusedBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(color: Colors.orange)
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),

                          ),
                          prefixIcon:Container(
                              width:30,
                              height: 30,
                              margin: EdgeInsets.all(8.0),
                              child: Image.asset('assets/images/icons/account.png'),),
                            // focusedBorder: OutlineInputBorder(
                            //   borderSide:BorderSide(),
                            // ),
                          //
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("UserName",style: TextStyle(fontSize:15,fontWeight: FontWeight.w400,),),
                          ),
                        ),

                      ),
                    ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:TextField(
                          decoration: InputDecoration(
                            focusedBorder:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                                borderSide: BorderSide(color: Colors.orange)
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),

                            ),
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
                              icon: Icon(Icons.remove_red_eye_sharp,color: Colors.black,size: 35,),
                              onPressed: (){
                                  setState(() {

                                  });
                              },
                            ),
                          ),

                        ),
                      ),
                       SizedBox(height: 25,),
                      Container(
                        width: 379,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> MyHomePage(title:"home",),
                          ));
                        }, child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)),
                      ),
                        SizedBox(
                          height: 25,
                        ),
                        Text('or continue others:',style: TextStyle(fontSize: 18),),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(11),color: Colors.white),
                              child: InkWell(
                                onTap: (){
                                  print("google.com");
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  margin: EdgeInsets.all(10.1),
                                  child: Image.asset('assets/images/icons/google.png')),
                                ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(11),color: Colors.white),
                              child: InkWell(
                                onTap: (){
                                  print("facebook.com");
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  margin: EdgeInsets.all(10.1),
                                  child:Image.asset('assets/images/icons/facebook.png'),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),

                      SizedBox(
                        height:70,
                      ),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.center ,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Don't have an account?",style: TextStyle(fontSize: 18),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: TextButton(onPressed: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=> SignUP()));

                            }, child:Text('Sign up',style: TextStyle(fontSize:18,color: Colors.deepPurple ),) ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
      ),

    );
  }
}