import 'package:flutter/material.dart';
import 'package:untitled/Editpofile.dart';
import 'package:untitled/Login.dart';
import 'package:untitled/Myactivity.dart';
import 'package:untitled/TP_Page.dart';

import 'main.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title:  Text("Settings",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),),
            backgroundColor: Colors.blue[700],
            elevation: 0.0,
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> EditProfilePage()));
                    }, icon: Icon(Icons.keyboard_arrow_right_sharp ,color: Colors.black38,size: 35,))
                  ],
                ),

                Divider(
                  color: Colors.grey[300],
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Change Theme',
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_right_sharp ,color: Colors.black38,size: 40,)
                  ],
                ),

                Divider(
                  color: Colors.grey[300],
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Activity',
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Myactivity()));
                    }, icon:Icon(Icons.keyboard_arrow_right_sharp ,color: Colors.black38,size: 40,)
)                  ],
                ),

                Divider(
                  color: Colors.grey[300],
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Log-out',
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                    }, icon:Icon(Icons.keyboard_arrow_right_sharp ,color: Colors.black38,size: 40,)
                    )
                  ],
                ),

                Divider(
                  color: Colors.grey[300],
                  height: 25.0,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0,40,0,0),
                    child: Column(mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> TP_Page()));
                        }, child: Text("Terms and Privacy",style: TextStyle(
                            color: Colors.blue[700],
                            fontSize: 18
                        ),))
                      ],),
                  ),
                )
                 ],
            ),
          ),
        ));
  }
}