import 'package:flutter/material.dart';
// ignore: camel_case_types
class feedback extends StatefulWidget {
  const feedback({Key? key}) : super(key: key);

  @override
  feedbackState createState() => feedbackState();
}

// ignore: camel_case_types
class feedbackState extends State<feedback> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(backgroundColor: Colors.lightGreenAccent,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(backgroundColor: Colors.green,
            title: const Center(child: Text('FEEDBACK')),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50,bottom: 10),
                  child: Center (
                    child: Text('Feedback',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0,),
                  child: Center(
                    child: Text('what do you think of our App..?',
                      style: TextStyle(color: Colors.black,fontSize: 15),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 3.0,right: 150,top: 10),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Rate Us',style: TextStyle(color: Colors.black,fontSize: 13),
                    ),
                  ),
                ),
                Padding(

                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                  child:SizedBox(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        filled: true,
                        hintStyle: const TextStyle(color: Colors.black,fontSize: 12),
                        hintText: "Enter Number Between 1 to 10 to Rate Us",
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 3.0,right: 150,top: 10),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Enter Feedback',style: TextStyle(color: Colors.black,fontSize: 13),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                  child: SizedBox(
                    height: 70,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.star_border_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: const TextStyle(color: Colors.black,fontSize: 12),
                        hintText: "Enter Your Thoughts and What Would You Like To Share With Us...?",

                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 275,
                  height: 35,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    child: const Text('SUBMIT',style: TextStyle(color: Colors.white),
                    ),onPressed: (){

                  },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                  ),
                    color: Colors.black,
                  ),
                ),

                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20,bottom: 20),
                    child: Text('Please send your thoughts to us , '
                        'thats the way we have to improve our App more efective and more user friendly',
                      style: TextStyle(color: Colors.black,fontSize: 13),
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
