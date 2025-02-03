import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:untitled/main.dart';

import 'Login.dart';


class Splash2 extends StatelessWidget {
  const Splash2 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 1800, // Duration of the animation in milliseconds
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // App Logo
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/splashlogo.png'), // Add your logo image here
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          // App Text
          const Text("KNOW THE DIFFERENCE",style: TextStyle(color:Colors.white,fontFamily: 'Kanit',fontWeight: FontWeight.bold,fontSize: 26)),
        ],
      ),
      splashIconSize: 250, // Adjust splash icon size
      nextScreen: const LoginPage(),
      splashTransition: SplashTransition.sizeTransition,
      backgroundColor: Colors.blue[700]!, // Blue background
    );
  }
}


// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'package:untitled/main.dart';
//
// class Splash2 extends StatelessWidget {
//   const Splash2({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const SplashScreen(),
//     );
//   }
// }
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     // Navigate to the home page after 3 seconds
//     Timer(const Duration(seconds: 4), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const LoginPage()),
//       );
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue[700],
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // App Logo
//             Container(
//               width: 200,
//               height: 200,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 image: DecorationImage(
//                   image: AssetImage('images/splashlogo.png'), // Add your logo image here
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             // App Text
//             const Text("KNOW THE DIFFERENCE",style: TextStyle(color:Colors.white,fontFamily: 'Kanit',fontWeight: FontWeight.bold,fontSize: 26)),
//           ],
//         ),
//       ),
//     );
//   }
// }

