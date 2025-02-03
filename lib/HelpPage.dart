import 'package:flutter/material.dart';
class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Help & Support",style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
        )),backgroundColor: Colors.blue[700],
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Thank you for using our application!\n We're here to assist you with any questions or concerns you may have.\nFor quick support, feel free to reach out to us via:\n\n📧 Email: jillatamil1602@gmail.com\n\n📞 Contact: 7708130386\n\nOur team is committed to providing the best service possible.\n\nPlease don’t hesitate to contact us, and we’ll get back to you as soon as we can. 😊",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,letterSpacing: 2.5),),
          ),
        ],
      ),
    );
  }
}