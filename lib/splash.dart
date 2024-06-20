import 'package:flutter/material.dart';
import 'package:petcone/auth/choice.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 30.0,
          ),
          Container(
            width: double.infinity,
            height: 500.0,
            child: Image(
              image: NetworkImage(
                  'https://res.cloudinary.com/edifice-solutions/image/upload/v1716894583/Group_2_5_lwkjdk.png'),
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            'Welcome to PetPalNaija!',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            child: Text(
              'Your go-to app for finding trusted veterinarians and connecting with fellow pet owners in Nigeria.',
              style: TextStyle(
                color: Color(0Xff343333),
                fontSize: 15.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ChoiceScreen();
              }));
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: Color(0XffBBD26D),
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
