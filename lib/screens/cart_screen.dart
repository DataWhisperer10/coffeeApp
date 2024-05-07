import 'package:coffee/screens/orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<String> selectedCupSize = [
    "S",
    "M",
    "L",
  ];
  List<bool> isCupSizeSelected = List.filled(3, true);
  bool isFavorite = false;

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            )),
        title: Center(
          child: Text(
            "Details",
            style: GoogleFonts.sora(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              icon: Icon(
                isFavorite
                    ? Icons.favorite_rounded
                    : Icons.favorite_outline_rounded,
                color: isFavorite
                    ? Color.fromARGB(255, 230, 112, 151)
                    : Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/details.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Cappucino",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.sora(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "with Chocolate",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.sora(
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Material(
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star_purple500_sharp,
                          color: Color.fromARGB(255, 10, 17, 235),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "4.8",
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          "(230)",
                          style: GoogleFonts.sora(fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(10),
                            elevation: 4,
                            child: Image.asset(
                              "assets/milk.png",
                              height: 44,
                              width: 44,
                            ),
                          ),
                        ),
                        const SizedBox(width: 14),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10),
                          child: Material(
                            borderRadius: BorderRadius.circular(10),
                            elevation: 5,
                            child: Image.asset(
                              "assets/beans.png",
                              height: 44,
                              width: 44,
                            ),
                          ),
                        )
                      ],
                    )

                    // ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Description",
                style:
                    GoogleFonts.sora(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              Text(
                "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More",
                style: GoogleFonts.sora(fontSize: 14, color: Colors.grey),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Size",
                style:
                    GoogleFonts.sora(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 12,
              ),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: List.generate(
                    selectedCupSize.length,
                    (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              isCupSizeSelected[index] =
                                  !isCupSizeSelected[index];
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                color: isCupSizeSelected[index]
                                    ? Colors.white
                                    : Color.fromARGB(255, 206, 90, 47),
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              selectedCupSize[index],
                              style: TextStyle(
                                  color: isCupSizeSelected[index]
                                      ? Colors.brown
                                      : Colors.white),
                            ),
                          ),
                        )),
              ),
              const SizedBox(
                height: 33,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Price",
                        style:
                            GoogleFonts.sora(fontSize: 14, color: Colors.grey),
                      ),
                      Text(
                        " \$ 10.20",
                        style: GoogleFonts.sora(
                            fontSize: 14,
                            color: Colors.brown,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  textButton(),
                ],
              )
            ],
          ),
        ),
      ),
    );
    ;
  }

  Widget textButton() {
    return TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: 20.0, horizontal: 54.0),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(255, 177, 119, 98)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const OrdersScreen()));
        },
        child: Text(
          "Order Now",
          style: GoogleFonts.sora(fontSize: 16, fontWeight: FontWeight.w600),
        ));
  }
}
