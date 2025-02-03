import 'package:flutter/material.dart';
import 'package:untitled/Signup.dart';
import 'package:untitled/TP_Page.dart';
import 'package:untitled/main.dart';
import 'ForgetPassPage.dart';




class logowidget extends StatefulWidget {
  const logowidget({super.key});

  @override
  State<logowidget> createState() => _logowidgetState();
}

class _logowidgetState extends State<logowidget> {
  @override
  Widget build(BuildContext context) {
    return Center(child: SizedBox(
        width: 150,height: 150,
        child:
        Image.asset("images/iconimage.png",fit: BoxFit.cover,)));
  }
}


class Buttonwidget extends StatelessWidget {
  const Buttonwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> MyApp()));
    },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[700],foregroundColor: Colors.black,
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ),
      label: Text("Login",style: TextStyle(color: Colors.white,
          fontSize: 30 ,shadows: [
            Shadow(color: Colors.black,offset: Offset(1.2, 1))
          ]),),
      icon: Icon(Icons.login,size: 25,weight: 20,color:Colors.white,shadows: [
        Shadow(color: Colors.black,offset: Offset(1.2, 1))
      ],),);
  }
}


class textbuttonwidget extends StatelessWidget {
  const textbuttonwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton.icon(onPressed: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SignupPage()));
      }, label: const Text("Create an account",style: TextStyle(color: Colors.blue,
        fontWeight:FontWeight.bold,fontSize: 22 ,)),
        icon: const Icon(Icons.create,size: 22,weight: 20,color:Colors.blue,),),
    );
  }
}


class forgotbuttonwidget extends StatelessWidget {
  const forgotbuttonwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Forgetpasspage()));
    },
        child: const Text("forgot password",style: TextStyle(color: Colors.blue,
            fontWeight:FontWeight.bold,fontSize: 15 )));
  }
}


class Textwidget extends StatelessWidget {
  const Textwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: const Text("KNOW THE DIFFERENCE",style: TextStyle(color: Colors.white,fontSize: 40,fontFamily: 'Teko' )));}
}

class texteboxWidget extends StatefulWidget {
  const texteboxWidget({super.key});

  @override
  State<texteboxWidget> createState() => _texteboxWidgetState();
}

class _texteboxWidgetState extends State<texteboxWidget> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  bool _obscureText=true;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Textbox1("Emails",Icons.email_outlined , false, emailcontroller),
          // TextField(
          //   controller: emailcontroller,
          //   style: TextStyle(color: Colors.black),
          //   keyboardType: TextInputType.emailAddress,
          //   decoration: InputDecoration(
          //       filled: true,
          //       fillColor: Colors.white,
          //       //labelText: 'Email',
          //       hintText: 'Email',hintStyle: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 20),
          //       border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          //       prefixIcon: Icon(Icons.email_outlined,color: Colors.blueGrey,)
          //   ),
          // ),
          SizedBox(height: 20),
          TextField(
            controller: passwordcontroller,
            style: TextStyle(color: Colors.black),
            obscureText: _obscureText,
            enableSuggestions: !_obscureText,
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
                    _obscureText=!_obscureText;
                  });
                }, icon: Icon(_obscureText ? Icons.visibility_outlined
                    :Icons.visibility_off_outlined,color: Colors.blueGrey,))
            ),
          )
        ],
      ),);
  }
}

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
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TP_Page()));
              }, child: Text("Terms & Privacy",style: TextStyle(color: Colors.white,fontSize:15)))
            ],
          )
        ],
      );
  }
}



class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(backgroundColor: Colors.blue[700],
          appBar: AppBar(backgroundColor: Colors.blue[700],
            //title: const Text('Login Page',style: TextStyle(
            //color: Colors.blue,fontSize: 40,fontWeight: FontWeight.bold
            //),),
            actions: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Padding(
                    padding:  EdgeInsets.all(11.0),
                    child: Icon(Icons.more_horiz_outlined,color: Colors.white,size: 40,),
                  )
                  ])],
          ),
          body: Column(children: [
            logowidget(),
            Textwidget(),
            Text("Login Here",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
            texteboxWidget(),
            checkboxwidget(),
            Text(" "),
            Container(

                width: 500,
                height: 279.47,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(40),bottom: Radius.zero)
                ),
                child: Column(children: [
                  Text(" "),
                  forgotbuttonwidget(),
                  Buttonwidget(),
                  Text(" "),
                  Text("or"),
                  textbuttonwidget(),]
                )
            ),

          ]
          ),)
    );
  }
}


TextField Textbox1(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white70,
      ), // Icon
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(width: 0, style: BorderStyle.none),
      ), // OutlineInputBorder
    ), // InputDecoration
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  ); // TextField
}