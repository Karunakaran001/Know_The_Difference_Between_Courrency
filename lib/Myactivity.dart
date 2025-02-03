import 'package:flutter/material.dart';

class Myactivity extends StatelessWidget {
  const Myactivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[700],
        title: Text("My Activiy",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){
          }, icon: Icon(Icons.more_vert_outlined,size: 20,color: Colors.white,))
        ],
      ),backgroundColor: Colors.white,
      body: Center(child:
      Text("This page is Save Your Activity For Your Refference"),
      ));
  }
}
