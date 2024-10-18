// ignore: file_names
import 'package:cardvalidator/pages/aboutPage.dart';
import 'package:cardvalidator/pages/privacy-policy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  List data = [];
  String valueFromUser = "";
  int AlertMsgColor = 0xFFF00000;
  String CardType = '';
  late String ImagePath = "";
  var AlertMsg = "";
  double opacity = 0.0;

  bool luhnAlgorithm() {
    var digit = valueFromUser.toString().split('').reversed.toList();
    int sum = 0;
    for (var i = 0; i < digit.length; i++) {
      int digi = int.parse(digit[i]);
      if (i % 2 == 1) {
        digi *= 2;
        if (digi > 9) {
          digi -= 9;
        }
      }
      sum += digi;
    }
    return sum % 10 == 0;
  }

  void checkIsValid(String val) {
    setState(() {
      valueFromUser = val;
      data.add(val);

      if (valueFromUser.length >= 13) {
        bool isValid = luhnAlgorithm();
        if (isValid) {
          AlertMsg = "The Card is Valid";
          AlertMsgColor = 0xFF008000;  
        } else {
          AlertMsg = "The Card is Invalid";
          AlertMsgColor = 0xFFFF0000;  
        }
      } else {
        AlertMsg = "";
      } 
      if (RegExp(r'^4').hasMatch(valueFromUser)) {
        CardType = "Visa";
        ImagePath = "assets/visa.png";
        opacity = 1.0;  
      } else if (RegExp(r'^5[1-5]').hasMatch(valueFromUser)) {
        CardType = "MasterCard";
        ImagePath = "assets/mastercard.png";
        opacity = 1.0;
      } else {
        CardType = "";
        ImagePath = "";
        opacity = 0.0; 
      }
    });

    print(valueFromUser.length);
    print(AlertMsg);
  }

  final String instagramUsername =
      'srivatsa_2871'; 

  Future<void> _openInstagram() async {
    String instagramUrl = 'instagram://user?username=$instagramUsername';
    String fallbackUrl = 'https://www.instagram.com/$instagramUsername/';

    if (await canLaunchUrl(Uri.parse(instagramUrl))) {
      await launchUrl(Uri.parse(instagramUrl));
    } else {
      await launchUrl(Uri.parse(fallbackUrl));
    }
  }

  final String linkedInUsername =
      'yellakara-srivatsa';  

  Future<void> _openLinkedIn() async {
    String linkedInUrl = 'linkedin://in/$linkedInUsername';
    String fallbackUrl = 'https://www.linkedin.com/in/$linkedInUsername/';

    if (await canLaunchUrl(Uri.parse(linkedInUrl))) { 
      await launchUrl(Uri.parse(linkedInUrl));
    } else { 
      await launchUrl(Uri.parse(fallbackUrl));
    }
  }

  Future<void> _openPlayStore() async {
    const String playStoreUrl =
        'https://play.google.com/store/apps/details?id=com.google.android.youtube'; 
    if (await canLaunch(playStoreUrl)) {
      await launch(playStoreUrl);
    } else {
      throw 'Could not launch $playStoreUrl';
    }
  }

  void _gotoScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AboutPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Validator"),
        centerTitle: true,
        backgroundColor: Colors.green[50],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Made with Flutter ',
              style: TextStyle(color: Colors.black45, fontSize: 12),
            ),
            const SizedBox(width: 10),
            Icon(
              FontAwesomeIcons.heart,
              color: Colors.pink[600],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Card Validator",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("V 1.0")
              ],
            )),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(FontAwesomeIcons.linkedin),
                title: const Text("Linkedin"),
                onTap: () {
                  _openLinkedIn();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(FontAwesomeIcons.instagram),
                title: const Text("Instagram"),
                onTap: () {
                  _openInstagram();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(Icons.info),
                title: const Text("About this app"),
                onTap: () {
                  _gotoScreen();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(Icons.privacy_tip),
                title: const Text("Privacy Policy"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PrivacyPolicyPage()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(Icons.star),
                title: const Text("Rate this App"),
                onTap: () {
                  _openPlayStore();
                },
              ),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    dense: true,
                    visualDensity: VisualDensity(vertical: -4),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Developed by Srivatsa',
                          style: TextStyle(color: Colors.black45, fontSize: 12),
                        ),
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center( 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,  
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Enter Card Number",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                maxLength: 16,
                onChanged: (value) {
                  checkIsValid(value);
                },
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
              const SizedBox(height: 20),
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                child: Text(
                  AlertMsg,
                  style: TextStyle(
                    color: Color(AlertMsgColor),
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(Icons.credit_card),
                    AnimatedOpacity(
                      opacity: opacity,
                      duration: const Duration(milliseconds: 1000),
                      child: ImagePath != ""
                          ? Image.asset(
                              ImagePath,
                              width: 60,
                            )
                          : const SizedBox(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),  
            ],
          ),
        ),
      ),
    );
  }
}
