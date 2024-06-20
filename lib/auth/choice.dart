import 'package:flutter/material.dart';
import 'package:petcone/auth/signup.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black87, // Change this to your desired color
        ),
        elevation: 0.0,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Hi there!',
            style: TextStyle(
              color: Color(0Xff343333),
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'How will you be using PetPalNaija?',
            style: TextStyle(
              color: Color(0Xff343333),
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignUpScreen();
                    }));
                  },
                  child: Container(
                    width: 250.0,
                    height: 275.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                      color: Color(0XffF8F3E0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 180,
                          height: 180.0,
                          child: Image(
                            image: NetworkImage(
                              'https://res.cloudinary.com/edifice-solutions/image/upload/v1716894582/illustration__Dog_walking__wskxyl.png',
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text(
                          "I'm a Pet Owner",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 17.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignUpScreen();
                    }));
                  },
                  child: Container(
                    width: 250.0,
                    height: 275.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                      color: Color(0XffBBD26D),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 180,
                          height: 180.0,
                          child: Image(
                            image: NetworkImage(
                              'https://res.cloudinary.com/edifice-solutions/image/upload/v1716894583/Screenshot_2024-05-26_at_17.21_1_a1ur4o.png',
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text(
                          "I’m a Veterinary Doctor",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 17.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
