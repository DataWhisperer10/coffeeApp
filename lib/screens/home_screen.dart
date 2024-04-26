import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height / 3,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
//crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 20,
                        height: double.infinity,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Location",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.sora(
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Jaipur, Rajasthan, Bharat",
                                textDirection: TextDirection.ltr,
                                style: GoogleFonts.sora(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(
                      //       horizontal: 10.0, vertical: 20),
                      //   child: Container(
                      //     alignment: Alignment.topCenter,
                      //     height: 44,
                      //     width: 44,
                      //     child: Image.asset(
                      //       "assets/Splash.png",
                      //       fit: BoxFit.fill,
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                  // Container(
                  //   height: height / 5,
                  //   child: CupertinoSearchTextField(
                  //     backgroundColor: Colors.black26,
                  //     suffixIcon: Icon(
                  //       Icons.filter_alt_outlined,
                  //       color: Colors.white,
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
