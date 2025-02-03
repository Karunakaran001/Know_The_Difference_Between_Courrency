import 'package:flutter/material.dart';
import 'package:untitled/TP_Page.dart';

class NotifyPage extends StatelessWidget {
  const NotifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Notification",style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),),
        actions: [
          SizedBox(height: 20,
            child: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> TP_Page()));
            }, icon: Icon(Icons.privacy_tip_outlined,color: Colors.white,size: 20,)),
          )
        ],
        backgroundColor: Colors.blue.shade700,
      ),
      body:
      Column(
        children : [Container(
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.all(18.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.blue.withOpacity(0.3),
                    blurRadius: 10,
                    offset: Offset(0,5)
                )
              ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.notifications,
                color: Colors.blue.shade700,
                size: 30,),
              Text("  "),
              Expanded(child:
              Text("Your Login Successfully...",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,)
              )
              ),
            ],
          ),
        ),],
      ),
      // floatingActionButton: FloatingActionButton(onPressed: (){
      // runApp(MyApp());
      // },child: Text("hi"),),
      backgroundColor: Colors.blue.shade50,);
  }
}
