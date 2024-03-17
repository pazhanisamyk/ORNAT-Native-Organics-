import 'package:flutter/material.dart';

import 'login.dart';
class reset extends StatefulWidget {
  const reset({Key? key}) : super(key: key);

  @override
  resetState createState() => resetState();
}

class resetState extends State<reset> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(backgroundColor: Colors.lightGreenAccent,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(backgroundColor: Colors.green,
            title: Center(child: Text('FORGOT PASSWORD')),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50,bottom: 10),
                  child: Center (
                    child: Text('Reset Password',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0,),
                  child: Text('Conform your email and we will send the instructions to your email.',
                    style: TextStyle(color: Colors.black,fontSize: 12),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0,right: 150,top: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Enter Email',style: TextStyle(color: Colors.black,fontSize: 13),
                    ),
                  ),
                ),
                Padding(

                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                  child:Container(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.black,fontSize: 12),
                        hintText: "Type Your Email",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0,right: 150,top: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Enter Code',style: TextStyle(color: Colors.black,fontSize: 13),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                  child: SizedBox(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.star_border_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.black,fontSize: 12),
                        hintText: "Enter The Code",

                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20,bottom: 20),
                    child: Text('Please Check Your Email & Kindly Enter The Code Correctly ,'
                        ' That We Were Sended To Your Email',style: TextStyle(color: Colors.black,fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(
                  width: 275,
                  height: 35,
                  child: RaisedButton(
                    child: Text('SUBMIT',style: TextStyle(color: Colors.white),
                    ),onPressed: (){

                  },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                  ),
                    color: Colors.black,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20,bottom: 20),
                    child: Text('Back To Login',style: TextStyle(color: Colors.black,fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(
                  width: 275,
                  height: 35,
                  child: RaisedButton(
                    child: Text('LOGIN',style: TextStyle(color: Colors.white),
                    ),onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> (login())
                    ),
                    );

                  },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                  ),
                    color: Colors.black,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20,bottom: 20),
                    child: Text('Please Check Your Email',style: TextStyle(color: Colors.black,fontSize: 13),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
