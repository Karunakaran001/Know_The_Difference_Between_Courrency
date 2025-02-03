import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Myactivity.dart';
import 'package:untitled/Notify.dart';
import 'package:untitled/Profile.dart';
import 'package:untitled/Setting.dart';
import 'package:untitled/TP_Page.dart';
import 'package:untitled/splash.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  if(kIsWeb){
    await Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyDSdH5S9fxBMMd-ful3oftx5VE4t5EvfV0", appId: "1:396706564100:web:c20ac0f8a6ba385a020d51", messagingSenderId: "396706564100", projectId: "know-the-difference-fd70f",authDomain: "know-the-difference-fd70f.firebaseapp.com",  storageBucket: "know-the-difference-fd70f.firebasestorage.app", measurementId: "G-S1QS0KFSPK"));
  }
  else{
   await Firebase.initializeApp();
  }
  runApp(Splash2());
}

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  final List<Widget> _page_=[
    const HomePage(),
    const Myactivity(),
    const Profile()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page_[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(currentIndex: _currentIndex,
            onTap:(index){
          setState(() {
            _currentIndex=index;
          });
            },
            backgroundColor: Colors.blue[700],
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white
            ,items: const[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history_toggle_off),
                label: "Hy Activity",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ]),
    );
  }
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNav();
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title: Text("KNOW THE DIFFERENCE",style: TextStyle(color: Colors.white,
              fontFamily: 'Kanit',
              fontWeight: FontWeight.bold,
              fontSize: 25),),
          leading: Image(image: AssetImage('images/iconimage.png',)),
          actions: [Align(alignment: Alignment.centerLeft,),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,shadowColor: Colors.transparent),
              child: Icon(Icons.notifications_sharp,size: 25,color: Colors.white,),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotifyPage()));
              },
            )],
        ),body: Center(
    child:
     Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 150,
              height: 150,
              child:
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
              Icon(Icons.account_circle,size: 90,color: Colors.white,
                shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(2.5,2.5),blurRadius: 20
                )],
              ),Text("Profile",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows:[ Shadow( color: Colors.black,
                            offset: Offset(2.5,2.5),
                            blurRadius: 20)]
                      ),)]),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20),
                color: Colors.blue,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(3.5, 4.5),
                    blurRadius: 20,
                  )
                ]
              ),),
            Container(
              width: 150,
              height: 150,
              child:
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.history_toggle_off,size: 90,color: Colors.white,
                      shadows: [
                        Shadow(
                            color: Colors.black,
                            offset: Offset(2.5,2.5),blurRadius: 20
                        )],
                    ),Text("My Activity",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows:[ Shadow( color: Colors.black,
                            offset: Offset(2.5,2.5),
                            blurRadius: 20)]
                    ),)]),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(3.5, 4.5),
                      blurRadius: 20,
                    )
                  ]
              ),),
            Container(
              width: 150,
              height: 150,
              child:
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.settings,size: 90,color: Colors.white,
                      shadows: [
                        Shadow(
                            color: Colors.black,
                            offset: Offset(2.5,2.5),blurRadius: 20
                        )],
                    ),Text("Settings",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows:[ Shadow( color: Colors.black,
                            offset: Offset(2.5,2.5),
                            blurRadius: 20)]
                    ),)]),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(3.5, 4.5),
                      blurRadius: 20,
                    )
                  ]
              )),]),Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child:
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.account_circle,size: 90,color: Colors.white,
                          shadows: [
                            Shadow(
                                color: Colors.black,
                                offset: Offset(2.5,2.5),blurRadius: 20
                            )],
                        ),Text("Profile",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            shadows:[ Shadow( color: Colors.black,
                                offset: Offset(2.5,2.5),
                                blurRadius: 20)]
                        ),)]),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(20),
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(3.5, 4.5),
                          blurRadius: 20,
                        )
                      ]
                  ),),
                Container(
                  width: 150,
                  height: 150,
                  child:
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.history_toggle_off,size: 90,color: Colors.white,
                          shadows: [
                            Shadow(
                                color: Colors.black,
                                offset: Offset(2.5,2.5),blurRadius: 20
                            )],
                        ),Text("My Activity",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            shadows:[ Shadow( color: Colors.black,
                                offset: Offset(2.5,2.5),
                                blurRadius: 20)]
                        ),)]),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(20),
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(3.5, 4.5),
                          blurRadius: 20,
                        )
                      ]
                  ),),
                Container(
                    width: 150,
                    height: 150,
                    child:
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.settings,size: 90,color: Colors.white,
                            shadows: [
                              Shadow(
                                  color: Colors.black,
                                  offset: Offset(2.5,2.5),blurRadius: 20
                              )],
                          ),Text("Settings",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              shadows:[ Shadow( color: Colors.black,
                                  offset: Offset(2.5,2.5),
                                  blurRadius: 20)]
                          ),)]),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(20),
                        color: Colors.blue,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(3.5, 4.5),
                            blurRadius: 20,
                          )
                        ]
                    )),])
       ] ))));
  }
}
