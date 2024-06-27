import 'package:flutter/material.dart';

import 'pages.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Container(
              child: Image.asset('images/login.png'),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 303,
              height: 60,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 241, 241, 241),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Your Email',
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 303,
              height: 60,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 241, 241, 241),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Your Email',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
