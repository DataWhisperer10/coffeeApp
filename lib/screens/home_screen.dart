import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<String> selectedCoffeType = [
    "Cappuccino",
    "Machiato",
    "Latte",
    "Cold Coffee",
  ];
  List<bool> isCoffeTypeSelected = List.filled(4, true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Location",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.sora(
                          fontWeight: FontWeight.w300, color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Jaipur, Rajasthan, Bharat",
                          textDirection: TextDirection.ltr,
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20),
                  child: Container(
                    height: 44,
                    width: 44,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/Splash.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const CupertinoSearchTextField(
              backgroundColor: Colors.black12,
              suffixIcon: Icon(
                Icons.filter_alt_outlined,
                color: Colors.brown,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Image.asset(
              "assets/Frame.png",
              height: 140,
              width: 315,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: List.generate(
                  selectedCoffeType.length,
                  (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            isCoffeTypeSelected[index] =
                                !isCoffeTypeSelected[index];
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              color: isCoffeTypeSelected[index]
                                  ? Colors.white
                                  : Color.fromARGB(255, 87, 36, 17),
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            selectedCoffeType[index],
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: isCoffeTypeSelected[index]
                                    ? Colors.brown
                                    : Colors.white),
                          ),
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
