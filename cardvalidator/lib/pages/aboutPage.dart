import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[50], 
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About this App",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "This app is a Card Validator that uses the Luhn Algorithm to verify the validity of various credit and debit cards. "
                "The app allows users to enter a card number and instantly check if it's valid by applying the Luhn checksum. "
                "It is built using Flutter and works seamlessly across Android and the web, making it a convenient tool for users on multiple platforms.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              SizedBox(height: 20),
              Text(
                "Key Features:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "- Instant card validation using the Luhn Algorithm\n"
                "- Simple and intuitive user interface\n"
                "- Works on Android devices and as a web app\n"
                "- Supports a wide range of card types",
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              SizedBox(height: 20),
              Text(
                "About the Luhn Algorithm:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "The Luhn Algorithm, also known as the 'modulus 10' or 'mod 10' algorithm, is a simple checksum formula used to validate a variety of identification numbers, such as credit card numbers. "
                "This algorithm helps ensure that the card number is correctly formatted and not a simple error in digit entry.",
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
