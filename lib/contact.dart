import 'package:flutter/material.dart';

// ignore: camel_case_types
class contact extends StatefulWidget {
  const contact({Key? key}) : super(key: key);

  @override
  contactState createState() => contactState();
}

// ignore: camel_case_types
class contactState extends State<contact> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(backgroundColor: Colors.lightGreenAccent,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(backgroundColor: Colors.green,
            title: const Center(child: Text('CONTACT')),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50,bottom: 10),
                  child: Center (
                    child: Text('Contact Us',style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0,),
                  child: Text('Name',style: TextStyle(color: Colors.black,fontSize: 12),
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
                        hintText: "Type Your Name",
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 3.0,right: 150,top: 10),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Email',style: TextStyle(color: Colors.black,fontSize: 12),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                  child: SizedBox(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.mail_outline),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: const TextStyle(color: Colors.black,fontSize: 12),
                        hintText: "Type Your Email",

                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 3.0,right: 150,top: 10),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Message',style: TextStyle(color: Colors.black,fontSize: 12),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                  child: SizedBox(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.mail_outline),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: const TextStyle(color: Colors.black,fontSize: 12),
                        hintText: "Type Your Messages Here...",

                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 275,
                  height: 67,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      child: const Text('SEND NOW',style: TextStyle(color: Colors.white),
                      ),onPressed: (){

                    },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                    ),
                      color: Colors.black,
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
