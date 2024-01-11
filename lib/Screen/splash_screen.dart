import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.toNamed('/location');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Get.height * .3),
              child:
                  Lottie.asset('Assets/json/weather.json', fit: BoxFit.contain),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: Get.height * .05),
              child: Text(
                'Version : 2.0.0+1',
                style: GoogleFonts.poppins(
                    letterSpacing: Get.width * .003,
                    fontSize: Get.width * .05,
                    fontWeight: FontWeight.w300),
              ),
            )
          ],
        ),
      ),
    );
  }
}
