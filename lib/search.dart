import 'package:flutter/material.dart';
import 'package:ornat/cart.dart';
import 'package:ornat/main.dart';

import 'offers.dart';
// ignore: camel_case_types
class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  _searchState createState() => _searchState();
}

// ignore: camel_case_types
class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SafeArea(
        child: Scaffold(
          appBar: AppBar(backgroundColor: Colors.green,
            title: const Center(child: Text('SEARCH')),
          ),
          bottomNavigationBar: Container(
            height: 70,
            decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> (const HomeScreen())
                    ),
                    );
                  },
                  icon: const Icon(Icons.home,color: Colors.black,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed:(){

                  },
                  icon: const Icon(Icons.search,color: Colors.green,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> (const offer())
                    ),
                    );
                  },
                  icon: const Icon(Icons.local_offer,color: Colors.black,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> (const cart())
                    ),
                    );
                  },
                  icon: const Icon(Icons.shopping_cart,color: Colors.black,
                    size: 30,
                  ),
                ),

              ],
            ),
          ),
          backgroundColor: Colors.white,
          body: const Center(
            child: Text('Welcome To Search',style: TextStyle(fontSize: 30),),
          ),

        ),
      ) ,
    );
  }
}
