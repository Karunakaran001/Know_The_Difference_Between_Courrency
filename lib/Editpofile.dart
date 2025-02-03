import 'package:flutter/material.dart';
import 'package:untitled/Login.dart';
import 'package:untitled/Profile.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar:AppBar(
            title: Text("Edit Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
            backgroundColor: Colors.blue[700],
          ),
          body:
          Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,15,0,0),
                  child: Center(
                    child: CircleAvatar(backgroundColor: Colors.black,radius: 83,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/sujin_photo.jpeg'),
                        radius: 80,child: Padding(
                        padding: const EdgeInsets.fromLTRB(110,110,0,0),
                        child: CircleAvatar(backgroundColor: Colors.black,radius: 22,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue[300],child: Icon(Icons.mode_edit_outline_outlined),
                          ),
                        ),
                      ),),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("User",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                profileTextWidgets(prof: Icons.person, RightT: "Name : ", LiftT: "Suji .N", endicon: Icons.edit_outlined),
                profileTextWidgets(prof: Icons.location_on_outlined, RightT: "Country : ", LiftT: "India", endicon: Icons.edit_outlined),
                profileTextWidgets(prof: Icons.mail, RightT: "Email : ", LiftT: "sujidadlittleprinces@gmail.com", endicon: Icons.edit_outlined),
                profileTextWidgets(prof: Icons.manage_accounts, RightT: "Gender : ", LiftT: "Female", endicon: Icons.edit_outlined),
                SizedBox(height: 30),
                ElevatedButton(onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Profile Updated Successfully...!"),
                      duration: Duration(seconds: 4),
                      action: SnackBarAction(
                        label: "UNDO",
                        onPressed: () {
                          // Perform some action
                          print("SnackBar action pressed!");
                        },
                      ),
                    ),);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()));

                },style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[700],foregroundColor: Colors.black,
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    child: Text("Update",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),))
              ]),)
    );
  }
}


class profileTextWidgets extends StatelessWidget {
  final IconData prof;
  final String RightT;
  final String LiftT;
  final IconData endicon;
  const profileTextWidgets({Key? key,required this.prof,required this.RightT,required this.LiftT,required this.endicon}): super(key:  key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(0,20,0,0),
      child: Container(
        width: 350,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(prof,color: Colors.black54,size: 30,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(05,0,0,0),
                  child: Row(
                    children: [
                      Text(RightT,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),Text(LiftT,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12)),
                    ],
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5,0,0,0),
              child: CircleAvatar(
                  child: Icon(endicon,weight: 30,color: Colors.grey,)),
            )
          ],
        ),decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(08),
        boxShadow: [

          BoxShadow(color: Colors.blue,
            offset: Offset(2.5, 3),blurRadius: 3,)
        ],
        color: Colors.white,
      ),
      ),
    );
  }
}
