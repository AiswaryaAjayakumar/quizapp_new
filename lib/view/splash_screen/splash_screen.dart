import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:quizapp_model/utils/color_constant.dart';

import 'package:quizapp_model/view/home_page/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Image(
          image: NetworkImage(
              "https://miro.medium.com/v2/resize:fit:1000/1*FBRsnCP9wE84UVW1Kkv5Yw.jpeg"),
          fit: BoxFit.fill,
        ),
        width: 500,
        height: MediaQuery.sizeOf(context).height,

        // child: Center(

        //   // child: Text(
        //   //   "Quiz App",
        //   //   style: TextStyle(
        //   //       color: Colorconstant.mycustomwhite,
        //   //       fontWeight: FontWeight.bold,
        //   //       fontSize: 55),
        //   // ),
        // ),
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image: AssetImage("assets/images/logos_netflix (3).png"))),
      ),
    );
  }
}
