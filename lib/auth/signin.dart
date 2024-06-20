import 'package:flutter/material.dart';
import 'package:petcone/auth/forgot.dart';
import 'package:petcone/auth/signup.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  String _email = "";
  String _password = "";

  bool showPassword = true;

  Widget myToggle() {
    return (showPassword
        ? GestureDetector(
            onTap: () {
              setState(() {
                showPassword = !showPassword;
              });
            },
            child: Icon(Icons.visibility_off))
        : GestureDetector(
            onTap: () {
              setState(() {
                showPassword = !showPassword;
              });
            },
            child: Icon(Icons.visibility)));
  }

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
            height: 30.0,
          ),
          Text(
            'Welcome Back',
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
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: Column(
                children: [
                  TextFormField(
                    controller: email,
                    onChanged: (value) {
                      setState(() {
                        _email = value;
                      });
                    },
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your email ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        borderSide: BorderSide(
                          color: Color(0XffBBD26D),
                          width: 1.5,
                          style: BorderStyle.solid,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Color(0XffBBD26D),
                          // Border color when the field is not focused
                          width: 1.5,
                          style: BorderStyle.solid,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Color(
                              0Xff343333), // Border color when the field is focused
                          width: 1.3,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  TextFormField(
                    controller: password,
                    onChanged: (value) {
                      setState(() {
                        _password = value;
                      });
                    },
                    textAlign: TextAlign.center,
                    obscureText: showPassword,
                    decoration: InputDecoration(
                      hintText: 'Enter your password ',
                      suffixIcon: myToggle(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        borderSide: BorderSide(
                          color: Color(0XffBBD26D),
                          width: 1.5,
                          style: BorderStyle.solid,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Color(0XffBBD26D),
                          // Border color when the field is not focused
                          width: 1.5,
                          style: BorderStyle.solid,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Color(
                              0Xff343333), // Border color when the field is focused
                          width: 1.3,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ForgotScreen();
                          }));
                        },
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: Color(0XffBBD26D),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) {
                      //   return ChoiceScreen();
                      // }));
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
                          'Sign In',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a registered member?',
                        style: TextStyle(
                          color: Color(0Xff343333),
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SignUpScreen();
                          }));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Color(0XffBBD26D),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
