import 'package:flutter/material.dart';
// ignore: camel_case_types
class about extends StatefulWidget {
  const about({Key? key}) : super(key: key);

  @override
  aboutState createState() => aboutState();
}

// ignore: camel_case_types
class aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(backgroundColor: Colors.lightGreenAccent,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(backgroundColor: Colors.green,
            title: const Center(child: Text('ABOUT ')),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 50,bottom: 10),
                  child: Center (
                    child: Text('About Us',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0,),
                  child: Center(
                    child: Text('what do you think of our App..?',
                      style: TextStyle(color: Colors.black,fontSize: 15),
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
