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
    "Espresso",
    "Americano",
    "Machiato",
    "Latte",
    "Cold Brew",
    "Mocha",
    "Turkish Coffee",
    "Cold Coffee",
    "Nitro Cold Brew",
  ];
  List<bool> isCoffeTypeSelected = List.filled(10, true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
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
                    padding: const EdgeInsets.symmetric(vertical: 20),
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
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 15,
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
                                        ? Colors.black
                                        : Colors.white),
                              ),
                            ),
                          )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    height: 300,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image.asset(
                            "assets/Cup3.png",
                            fit: BoxFit.fill,
                          ),
                          Text(
                            "Cappucino",
                            style: GoogleFonts.sora(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          Text(
                            "with Chocolate",
                            style: GoogleFonts.sora(fontSize: 12),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 25,
                                width: 60,
                                child: Text(
                                  "\$ 4.53",
                                  style: GoogleFonts.sora(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                  height: 25,
                                  width: 60,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add_box_rounded,
                                        color: Color.fromARGB(255, 121, 42, 13),
                                      )))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 200,
                    height: 300,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image.asset(
                            "assets/Cup22.png",
                            fit: BoxFit.fill,
                          ),
                          Text(
                            "Cappucino",
                            style: GoogleFonts.sora(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          Text(
                            "with Oat Milk",
                            style: GoogleFonts.sora(fontSize: 12),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 25,
                                width: 60,
                                child: Text(
                                  "\$ 3.90",
                                  style: GoogleFonts.sora(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                  height: 25,
                                  width: 60,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add_box_rounded,
                                        color: Color.fromARGB(255, 121, 42, 13),
                                      )))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    height: 300,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image.asset(
                            "assets/Cup3.png",
                            fit: BoxFit.fill,
                          ),
                          Text(
                            "Cappucino",
                            style: GoogleFonts.sora(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          Text(
                            "with Chocolate",
                            style: GoogleFonts.sora(fontSize: 12),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 25,
                                width: 60,
                                child: Text(
                                  "\$ 4.53",
                                  style: GoogleFonts.sora(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                  height: 25,
                                  width: 60,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add_box_rounded,
                                        color: Color.fromARGB(255, 121, 42, 13),
                                      )))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 200,
                    height: 300,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image.asset(
                            "assets/Cup22.png",
                            fit: BoxFit.fill,
                          ),
                          Text(
                            "Cappucino",
                            style: GoogleFonts.sora(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          Text(
                            "with Oat Milk",
                            style: GoogleFonts.sora(fontSize: 12),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 25,
                                width: 60,
                                child: Text(
                                  "\$ 3.90",
                                  style: GoogleFonts.sora(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                  height: 25,
                                  width: 60,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add_box_rounded,
                                        color: Color.fromARGB(255, 121, 42, 13),
                                      )))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
