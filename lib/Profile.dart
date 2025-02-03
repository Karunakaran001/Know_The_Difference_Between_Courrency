import 'package:flutter/material.dart';
import 'package:untitled/HelpPage.dart';
import 'package:untitled/Setting.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title: Text("Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
          actions: [
            Padding(
                padding: const EdgeInsets.fromLTRB(0,0,10,0),
                child: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingPage()));
                },
                  icon: Icon(Icons.settings_outlined,color: Colors.white,size: 35,),
                ))
          ],
        ),
        body: Column( crossAxisAlignment: CrossAxisAlignment.center,
          children: [Padding(
            padding: const EdgeInsets.fromLTRB(0,25,0,0),
            child: Center(
              child: CircleAvatar(backgroundColor: Colors.black,radius: 83,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/sujin_photo.jpeg'),
                  radius: 80,),
              ),
            ),
          ),
            SizedBox(height: 20,),
            Text("User",style: TextStyle(fontSize: 20,fontFamily: 'Kanit',fontWeight: FontWeight.bold)),
            SizedBox(height: 20,),
            profileDetails(heading: "Name  : ", Details: "Suji .N"),
            profileDetails(heading: "Location  : ", Details: "India"),
            profileDetails(heading: "Gender  : ", Details: "Female"),
            profileDetails(heading: "Email ID  : ", Details: "sujidadlittleprincess@gmail.com")],
        ),
        floatingActionButton: Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.blue[700],
                borderRadius: BorderRadius.circular(10)
            ),

            child: FloatingActionButton.extended(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HelpPage()));
            }, icon: Icon(Icons.handshake_outlined,color: Colors.white,size: 25,),
              backgroundColor: Colors.blue[700],foregroundColor: Colors.white,hoverElevation: 20,hoverColor: Colors.white,elevation: 30,
              label:Text('help',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),

            )
        ));
  }
}
class profileDetails extends StatelessWidget {
  final String heading;
  final String Details;
  const profileDetails({Key? key, required this.heading,required this.Details}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,20,0,0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(05,0,0,0),
                  child: Row(
                    children: [
                      Text(heading,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Text(Details,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                    ],
                  ),
                ),

              ],
            ),
          ],
        ),decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(08),
        color: Colors.white,
      ),
      ),
    );
  }
}
