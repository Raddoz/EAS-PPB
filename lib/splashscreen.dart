import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const Login(),
      ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    'Starbucks',
                    style: TextStyle(
                      fontSize: 70,
                      fontFamily: 'Koulen',
                      color: Color(0xFF224F36),
                    ),
                  ),
                ],
              ),
              Image.asset('images/splash.png'),
            ],
          ),
        ),
      ),
    );
  }
}
