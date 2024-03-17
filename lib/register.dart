import 'package:flutter/material.dart';
import 'package:ornat/login.dart';
// ignore: camel_case_types
class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  registerState createState() => registerState();
}

// ignore: camel_case_types
class registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(backgroundColor: Colors.lightGreenAccent,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(backgroundColor: Colors.green,
            title: const Center(child: Text('REGISTER')),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50,bottom: 10),
                  child: Center (
                    child: Text('Create Account',style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0,),
                  child: Text('Your Full Name',style: TextStyle(color: Colors.black,fontSize: 12),
                  ),
                ),
                Padding(

                  padding: const EdgeInsets.only(left: 15.0,right: 15.0,bottom: 10),
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
                        hintText: "Enter Full Name",
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0,),
                  child: Text('Your Email',style: TextStyle(color: Colors.black,fontSize: 12),
                  ),
                ),
                Padding(

                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                  child:SizedBox(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.mail_outline),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        filled: true,
                        hintStyle: const TextStyle(color: Colors.black,fontSize: 12),
                        hintText: "Enter Email",
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 3.0,right: 150,top: 10),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Create PassWord',style: TextStyle(color: Colors.black,fontSize: 12),
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
                        hintText: "Create Your PassWord",

                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 3.0,right: 150,top: 10),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Confirm PassWord',style: TextStyle(color: Colors.black,fontSize: 12),
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
                        hintText: "Confirm Your PassWord",

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: SizedBox(
                    width: 275,
                    height: 35,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      child: const Text('REGISTER',style: TextStyle(color: Colors.white),
                      ),onPressed: (){

                    },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                    ),
                      color: Colors.black,
                    ),
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20,bottom: 20),
                    child: Text('Already have Account..?',style: TextStyle(color: Colors.black,fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(
                  width: 275,
                  height: 35,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    child: const Text('LOGIN',style: TextStyle(color: Colors.white),
                    ),onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> (const login())
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
