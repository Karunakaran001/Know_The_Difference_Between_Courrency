import 'package:flutter/material.dart';
import 'package:untitled/Login.dart';

class Forgetpasspage extends StatelessWidget {
  const Forgetpasspage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ResetPasswordPage(),
    );
  }
}

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  int _currentStep = 0;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  String generatedOtp = "123456"; // Simulated OTP for testing

  void sendOtp() {
    // Simulate sending OTP to email
    final email = emailController.text;
    if (email.isNotEmpty && email.contains("@")) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("OTP sent to $email")),
      );
      setState(() {
        _currentStep = 1; // Move to OTP verification step
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter a valid email address")),
      );
    }
  }

  void verifyOtp() {
    // Verify entered OTP
    if (otpController.text == generatedOtp) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("OTP verified successfully!")),
      );
      setState(() {
        _currentStep = 2; // Move to reset password step
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Invalid OTP. Please try again.")),
      );
    }
  }

  void resetPassword() {
    // Check if passwords match
    if (newPasswordController.text == confirmPasswordController.text &&
        newPasswordController.text.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Password reset successfully!")),
      );
      // Navigate to login or another page
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Passwords do not match.")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Reset Password",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue[700],
      ),
      body: Stepper(
        currentStep: _currentStep,
        onStepContinue: () {
          if (_currentStep == 0) {
            sendOtp();
          } else if (_currentStep == 1) {
            verifyOtp();
          } else if (_currentStep == 2) {
            resetPassword();
          }
        },
        onStepCancel: () {
          if (_currentStep > 0) {
            setState(() {
              _currentStep--;
            });
          }
        },
        steps: [
          // Step 1: Enter Email
          Step(
            title: Text("Enter Email",style: TextStyle(color: Colors.blue[700],fontWeight: FontWeight.bold),),
            content: Column(
              children: [
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email Address",labelStyle: TextStyle(color: Colors.blue[700]),
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
            isActive: _currentStep == 0,
          ),
          // Step 2: Verify OTP
          Step(
            title: Text("Verify OTP",style: TextStyle(color: Colors.blue[700],fontWeight: FontWeight.bold)),
            content: Column(
              children: [
                TextField(
                  controller: otpController,
                  decoration:  InputDecoration(
                    labelText: "Enter OTP",labelStyle: TextStyle(color: Colors.blue[700]),
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
            isActive: _currentStep == 1,
          ),
          // Step 3: Reset Password
          Step(
            title:  Text("Reset Password",style: TextStyle(color: Colors.blue[700],fontWeight: FontWeight.bold)),
            content: Column(
              children: [
                TextField(
                  controller: newPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "New Password",labelStyle: TextStyle(color: Colors.blue[700]),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",labelStyle: TextStyle(color: Colors.blue[700]),
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
            isActive: _currentStep == 2,
          ),
        ],
      ),
    );
  }
}
