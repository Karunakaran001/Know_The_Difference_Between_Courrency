import 'package:flutter/material.dart';
import 'package:untitled/TP_Page.dart';

import 'Login.dart';

class checkboxwidget extends StatefulWidget {
  const checkboxwidget({super.key});

  @override
  State<checkboxwidget> createState() => _checkboxwidgetState();
}

class _checkboxwidgetState extends State<checkboxwidget> {
  bool t_condition = false;
  @override
  Widget build(BuildContext context) {
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(value: t_condition,checkColor: Colors.white,
              onChanged:(bool? sum) {
                setState(() {
                  t_condition = sum?? false;
                });
              }),Row(
            children: [
              Text("I accept to the ",style: TextStyle(color: Colors.black,fontSize:15),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> TP_Page()));
              }, child: Text("Terms & Privacy",style: TextStyle(color: Colors.white,fontSize:15)))
            ],
          )
        ],
      );
  }
}








//signup Screen


class logingobuttonwidget extends StatelessWidget {
  logingobuttonwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
    },
        child: Text("I Have An Account",style: TextStyle(color: Colors.white,fontSize: 15 )));
  }
}


class textboxsignupwidget extends StatefulWidget {
  const textboxsignupwidget({super.key});

  @override
  State<textboxsignupwidget> createState() => _textboxsignupwidget();
}

class _textboxsignupwidget extends State<textboxsignupwidget> {
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController emailidcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController repasswordcontroller = TextEditingController();
  final _formkey= GlobalKey<FormState>();
  bool _ispasswordVisible= false;
  bool _isrepasswordVisible= false;
  bool _obscureText= true;


  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(30),
      child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernamecontroller,
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  //labelText: 'Email',
                  hintText: 'User Name',hintStyle: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(Icons.person,color: Colors.blueGrey,)
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailidcontroller,
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  //labelText: 'Email',
                  hintText: 'Email',hintStyle: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(Icons.email_outlined,color: Colors.blueGrey,)
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordcontroller,
              style: TextStyle(color: Colors.black),
              obscureText: _ispasswordVisible,
              cursorColor: Colors.blue,

              decoration:InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  // labelText: 'password',labelStyle: TextStyle(color: Colors.blue[700]),
                  hintText: 'Password',hintStyle: TextStyle(color:Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),
                  border:  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(Icons.security_rounded,color:Colors.blueGrey),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      _ispasswordVisible=!_ispasswordVisible;
                    });
                  }, icon: Icon(_obscureText ? Icons.visibility_outlined
                      :Icons.visibility_off_outlined,color: Colors.blueGrey,))
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: repasswordcontroller,
              style: TextStyle(color: Colors.black),
              obscureText: _isrepasswordVisible,
              cursorColor: Colors.blue,

              decoration:InputDecoration(
                filled: true,
                fillColor: Colors.white,
                // labelText: 'password',labelStyle: TextStyle(color: Colors.blue[700]),
                hintText: 'Re-Password',hintStyle: TextStyle(color:Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),
                border:  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                prefixIcon: Icon(Icons.security_rounded,color:Colors.blueGrey),

              ),

            )
          ],
        ),
      ),);
  }
}

class signupbuttonwidget extends StatelessWidget {
  const signupbuttonwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
    },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.white,foregroundColor: Colors.black,
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),overlayColor:Colors.black,shadowColor: Colors.black  ),
      label: Text("Sign Up",style: TextStyle(color: Colors.blue[700],
          fontSize: 30 ,shadows: [
            Shadow(color: Colors.blue,offset: Offset(1.2, 1))
          ]),),
      icon: Icon(Icons.login,size: 25,weight: 20,color:Colors.blue[700],shadows: [
        Shadow(color: Colors.blue,offset: Offset(1.2, 1))
      ],),);
  }
}




class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(backgroundColor: Colors.blue[700],
          appBar: AppBar(backgroundColor: Colors.white,
            title: const Text("Let's",style: TextStyle(
              color: Colors.black,fontSize: 40,
            ),),
            actions: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Padding(
                    padding:  EdgeInsets.all(11.0),
                    child: Icon(Icons.more_horiz_outlined,color: Colors.black,size: 40,),
                  )
                  ])],
          ),
          body: Column(children: [
            Container(

                width: 500,
                height: 190,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.zero,bottom: Radius.circular(40))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Cteare",style: TextStyle(fontSize: 38,color: Colors.blue[800],fontWeight: FontWeight.bold)),
                        Text("Your",style: TextStyle(fontSize: 38,color: Colors.blue[800],fontWeight: FontWeight.bold)),
                        Text("Account...",style: TextStyle(fontSize: 38,color: Colors.blue[800],fontWeight: FontWeight.bold))
                      ]
                  ),
                )
            ),
            textboxsignupwidget(),
            checkboxwidget(),
            Text(" "),
            Text(" "),
            signupbuttonwidget(),
            Text(" "),
            logingobuttonwidget()
          ]
          ),)
    );
  }
}