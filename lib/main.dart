import 'package:download_button_with_animation/ButtonAnimation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonAnimation(primaryColor: Color.fromRGBO(57, 92, 249, 1), darkPrimaryColor: Color.fromRGBO(44, 78, 233, 1)),
              SizedBox(height: 20,),
              ButtonAnimation(primaryColor: Colors.yellow.shade700, darkPrimaryColor: Colors.yellow.shade800),
              SizedBox(height: 20,),
              ButtonAnimation(primaryColor: Colors.green.shade700, darkPrimaryColor: Colors.green.shade800),
              SizedBox(height: 20,),
              ButtonAnimation(primaryColor: Colors.red.shade700, darkPrimaryColor: Colors.red.shade800),
            ],
          ),
        ),
      ),
    );
  }
}

