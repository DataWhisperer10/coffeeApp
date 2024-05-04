import 'package:coffee/screens/register_screen_1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/bgimage.png",
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 30,
              right: 30,
              child: Container(
                width: MediaQuery.of(context).size.width / 6,
                height: MediaQuery.of(context).size.height / 3.3,
                decoration: const BoxDecoration(color: Colors.black),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      "Coffee so good,  your taste buds will love it.",
                      style: GoogleFonts.sora(
                          fontSize: 22, //AppSizing.screenSizeonHeight(34),
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "The best grain, the finest roast, the powerful flavor.",
                      style: TextStyle(
                          backgroundColor: Colors.black,
                          fontSize: 14, //AppSizing.screenSizeonHeight(14),
                          color: Colors.grey.shade200),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => const RegisterScreen1()),
                            ),
                          );
                        },
                        child: Container(
                          height: 40,
                          width: 315,
                          // margin: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                            child: Text(
                              "Get Started",
                              style: GoogleFonts.sora(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
