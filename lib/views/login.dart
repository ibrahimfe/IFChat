import 'package:flutter/material.dart';
import 'register.dart'; // Import file register.dart
import 'package:ifchat/controllers/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usr = TextEditingController();
  final TextEditingController pwd = TextEditingController();

  bool isVisible = true;

  void changeVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  final String ifchatLogoUrl = 'assets/images/logo.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF36393F),
        title: Row(
          children: [
            Image.network(
              ifchatLogoUrl,
              height: 40.0,
            ),
            SizedBox(width: 10.0),
            Text(
              'IF Chat',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF36393F),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Color(0xFF32353B),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                ifchatLogoUrl,
                height: 100.0,
              ),
              SizedBox(height: 10.0),
              Text(
                'IF CHAT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              // Input field for email
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: TextField(
                  controller: usr,
                  style: TextStyle(color: Color(0xFF36393F)),
                  decoration: InputDecoration(
                    labelText: 'Username',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              // Input field for password
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: TextField(
                  controller: pwd,
                  style: TextStyle(color: Color(0xFF36393F)),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        changeVisibility();
                      },
                      icon: Icon(
                          isVisible ? Icons.visibility : Icons.visibility_off),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  obscureText: isVisible,
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () async {
                  // login untuk login
                  // 1. fetch data based on user
                  // 2. bandingkan user dan password dengan yang di input
                  await loginUser(context, usr.text, pwd.text);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 18.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  elevation: 5.0,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: 0.0),
                    Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RegisterPage()), // Ganti rute untuk RegisterPage
                  );
                },
                child: Text(
                  'REGISTER',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
