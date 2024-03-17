import 'package:flutter/material.dart';
import 'package:ornat/register.dart';
import 'package:ornat/resetpass.dart';

import 'main.dart';
// ignore: camel_case_types
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  loginState createState() => loginState();
}

// ignore: camel_case_types
class loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(backgroundColor: Colors.lightGreenAccent,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(backgroundColor: Colors.green,
            title: const Center(child: Text('LOGIN')),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50,bottom: 10),
                  child: Center (
                    child: Text('Login',style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0,),
                  child: Text('UserName',style: TextStyle(color: Colors.black,fontSize: 12),
                  ),
                ),
                Padding(

                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                  child:SizedBox(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person_outline_rounded),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        filled: true,
                        hintStyle: const TextStyle(color: Colors.black,fontSize: 12),
                        hintText: "Type Your UserName",
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 3.0,right: 150,top: 10),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('PassWord',style: TextStyle(color: Colors.black,fontSize: 12),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                  child: SizedBox(
                    height: 45,
                    child: TextField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: const TextStyle(color: Colors.black,fontSize: 12),
                        hintText: "Type Your PassWord",

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0,left: 130,top: 6,bottom: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.black),),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> (const reset())
                        ),
                        );
                      },
                      child: const Text('Forgot Password..?'),
                    ) ,
                  ),
                ),
                SizedBox(
                  width: 275,
                  height: 35,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    child: const Text('LOGIN',style: TextStyle(color: Colors.white),
                    ),onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> (const HomeScreen())
                    ),
                    );
                  },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                  ),
                    color: Colors.black,
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20,bottom: 20),
                    child: Text('Dont have Account..?',style: TextStyle(
                        color: Colors.black,fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(
                  width: 275,
                  height: 35,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    child: const Text('REGISTER',style: TextStyle(color: Colors.white),
                    ),onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> (const register())
                    ),
                    );
                  },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                  ),
                    color: Colors.black,
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
