import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ornat/about.dart';
import 'package:ornat/cart.dart';
import 'package:ornat/contact.dart';
import 'package:ornat/feedback.dart';
import 'package:ornat/login.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:ornat/offers.dart';
import 'package:ornat/search.dart';
void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState()
  {
    super.initState();
    Timer(
        const Duration(seconds: 3),
            () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const login()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Image.asset('images/logo.png',height: 250,width: 280,),
      ),
    );

  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(backgroundColor: Colors.brown.shade50,
          resizeToAvoidBottomInset: false,
          appBar: AppBar( backgroundColor: Colors.green,
            title: const Center(child: Text("ORNAT",style: TextStyle(fontWeight: FontWeight.bold),)),
            actions: [IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> (const search())
              ),
              );
            }, icon: const Icon(Icons.search))],
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
                  onPressed:(){},
                  icon: const Icon(Icons.home,color: Colors.green,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> (const search())
                    ),
                    );
                  },
                  icon: const Icon(Icons.search,color: Colors.black,
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
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: const Text('pazhani',style: TextStyle(color: Colors.black),),
                  accountEmail: const Text('pazhani@gmail.com',style: TextStyle(color: Colors.black),),
                  decoration: const BoxDecoration(
                      color: Colors.green
                  ),
                  currentAccountPicture: CircleAvatar(
                    child: (Image.asset('images/profile.png',height: 70,)
                    ),
                    radius: 50,
                    backgroundColor: Colors.white,
                  ),
                ),

                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('HOME'),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> (const HomeScreen())
                    ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.contact_phone),
                  title: const Text('CONTACT US'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> (const contact())
                    ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.feedback),
                  title: const Text('FEEDBACK'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> (const feedback())
                    ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.group),
                  title: const Text('ABOUT US'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> (const about())
                    ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('LOGOUT'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> (const login())
                    ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.power_settings_new),
                  title: const Text('EXIT'),
                  onTap: (){
                    SystemNavigator.pop();
                  },
                ),
              ],
            ),
          ),
          body:SizedBox(
            child: SingleChildScrollView(
              child:Column(children:<Widget>[
            ImageSlideshow(
              width: double.infinity,
              height: 250,
              initialPage: 0,
              indicatorColor: Colors.blue,
              indicatorBackgroundColor: Colors.grey,
              onPageChanged: (value) {
                debugPrint('Page changed: $value');
              },
              autoPlayInterval: 3000,
              isLoop: true,
              children: [
                Image.asset(
                  'images/slide1.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/slide2.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/slide3.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/slide4.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/slide5.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/slide6.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/slide7.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/slide8.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/slide9.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/slide10.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text('Shop By Category',
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
            ),

            Column(
                  children: const <Widget>[
                    ExpansionTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/natural.jpg'),
                      ),
                      title: Text('Natural & Organic Products'),
                      children: <Widget>[
                        ListTile(title: Text('Masalas & Spices')),
                        ListTile(title: Text('Dals & Pulses')),
                        ListTile(title: Text('Rice')),
                        ListTile(title: Text('Immunity Bosters')),
                        ListTile(title: Text('Salt, Sugar & Janggery')),
                        ListTile(title: Text('Millets')),
                      ],
                    ),
                    ExpansionTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/vegetables.jpg'),
                      ),
                      title: Text('Fruits & Vegetables'),
                      children: <Widget>[
                        ListTile(title: Text('Vegetabl Podwers')),
                        ListTile(title: Text('Fruit Powders')),
                        ListTile(title: Text('herbs')),
                      ],
                    ),
                    ExpansionTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/flours.jpg'),
                      ),
                      title: Text('Healthy Flours'),
                      children: <Widget>[
                        ListTile(title: Text('Fruit Flours')),
                        ListTile(title: Text('Vegetable Flours')),
                        ListTile(title: Text('Herbal Flours')),
                      ],
                    ),
                    ExpansionTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/honey.jpg'),
                      ),
                      title: Text('Natural Honeys'),
                      children: <Widget>[
                        ListTile(title: Text('Honeys')),
                      ],
                    ),
                    ExpansionTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/pickle.jpg'),
                      ),
                      title: Text('Indian Pickles'),
                      children: <Widget>[
                        ListTile(title: Text('Pickles')),
                      ],
                    ),
                    ExpansionTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/herbal.jpg'),
                      ),
                      title: Text('Natural Herbal Products'),
                      children: <Widget>[
                        ListTile(title: Text('Herbal Products')),
                      ],
                    ),
                    ExpansionTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/oil.jpg'),
                      ),
                      title: Text('Healthy Oils'),
                      children: <Widget>[
                        ListTile(title: Text('Cold Pressed Oils')),
                      ],
                    ),
                    ExpansionTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/snacks.jpg'),
                      ),
                      title: Text('Healthy Snacks'),
                      children: <Widget>[
                        ListTile(title: Text('HOT')),
                        ListTile(title: Text('Sweets')),
                      ],
                    ),
                    ExpansionTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/dairy.jpg'),
                      ),
                      title: Text('Dairy Products'),
                      children: <Widget>[
                        ListTile(title: Text('Ghees')),
                        ListTile(title: Text('Curd Powder')),
                      ],
                    ),
                  ],
                ),
              ]
            ),
          ),
        ),
      ),
      ),
    );
  }
}

