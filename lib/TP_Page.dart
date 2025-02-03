import 'package:flutter/material.dart';

class TP_Page extends StatelessWidget {
  const TP_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Terms & Condition",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),),
            backgroundColor: Colors.blue.shade700,
          ),
          body: Padding(padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Titles(Title: "1.Indroduction"),
                  Contents(Content: "Welcome to our Application. By accessing or using this application,"
                      " you agreed to be bound by these Terms and Conditions."),

                  Titles(Title: "2.Purpose of the Application"),
                  Contents(Content: "Calculate multi-currency denominations and values.\nCompare currency values across countries.\nPerform money exchange calculations.\nCompare the prices of precious metals with other countries."),

                  Titles(Title: "3. Real-Time Data Usage"),
                  Contents(Content: "The app relies on real-time data for calculations.\nData may occasionally be inaccurate due to external factors."),

                  Titles(Title: "4. Use of the Application"),
                  Contents(Content:  "You agree to use the application only for lawful purposes and in a way that dose not infringe on the rights of others."),

                  Titles(Title: "5. Email Login Requirement"),
                  Contents(Content: "Users must log in with their email for enhanced functionality.\nLogin enables saving user activities for future reference."),

                  Titles(Title: "6. User Activity Storage"),
                  Contents(Content: "The app stores user activities to improve user experience and enable easy future access.\nActivities are stored securely and used only within the app's functionality."),

                  Titles(Title: "7. Data Privacy"),
                  Contents(Content: "User data is kept confidential and is not shared with third parties.\nThe app only collects necessary information to provide better service."),

                  Titles(Title: "8. Terms of Use"),
                  Contents(Content: "Users must ensure that the calculations meet their requirements.\nThe app does not guarantee 100% accuracy in results and should not be used as the sole source for critical decisions."),

                  Titles(Title: "9. Disclaimer"),
                  Contents(Content: "The app is provided ""as is"" without warranties of any kind.\nCurrency and precious metal values are subject to market fluctuations and external data sources."),

                  Titles(Title: "10. User Responsibility"),
                  Contents(Content: "Users should verify the calculations with reliable external sources if needed.\nAny decision made based on the app's output is solely the user's responsibility."),

                  Titles(Title: "11. Updates and Changes"),
                  Contents(Content: "The app may update features and terms periodically to enhance user experience.\nUsers will be notified of significant changes."),

                  Titles(Title: "12. Contact Support"),
                  Contents(Content: "For any queries or issues, users can contact the support team via the app's help section."),

                  Titles(Title: " "),
                  Contents(Content: " ")

                ],
              ),
            ),),
        )
    );
  }
}


class Titles extends StatelessWidget {
  final String Title;
  const Titles({Key? key,required this.Title}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Text(Title,style: TextStyle(
            fontSize: 18,fontWeight: FontWeight.bold,
            color: Colors.black87
        ) )
      ],
    );
  }
}


class Contents extends StatelessWidget {
  final String Content;
  const Contents({Key? key,required this.Content}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        Text(Content,
          style: TextStyle(
              fontSize: 16,
              color: Colors.black87
          ),),
      ],
    );
  }
}