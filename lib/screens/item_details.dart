import 'package:coffee/screens/orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({super.key});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  List<String> selectedCupSize = [
    "S",
    "M",
    "L",
  ];
  Map<String, double> cupSizes = {
    "S": 6.90,
    "M": 8.40,
    "L": 10.20,
  };
  List<bool> isCupSizeSelected = List.filled(3, false);
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
                          color: Color.fromARGB(255, 224, 203, 12),
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
                          // Unselect all cup sizes
                          for (int i = 0; i < isCupSizeSelected.length; i++) {
                            isCupSizeSelected[i] = false;
                          }
                          // Select the current cup size
                          isCupSizeSelected[index] = true;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          color: isCupSizeSelected[index]
                              ? Color.fromARGB(255, 206, 90, 47)
                              : Colors.white,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          selectedCupSize[index],
                          style: TextStyle(
                              color: isCupSizeSelected[index]
                                  ? Colors.white
                                  : Color.fromARGB(255, 206, 90, 47)),
                        ),
                      ),
                    ),
                  )),
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
  }

  Widget textButton() {
    bool isAnySizeSelected = isCupSizeSelected.any((selected) => selected);

    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 20.0, horizontal: 54.0),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          isAnySizeSelected
              ? const Color.fromARGB(255, 177, 119, 98)
              : Colors
                  .grey, // used here to Disable button if no cupsizze is selected
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      onPressed:
          isAnySizeSelected // this is used to Enable button only if at least one cupssize is selected
              ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OrdersScreen()),
                  );
                }
              : null, // it is used if Nullify onPressed if no size is selected
      child: Text(
        "Order Now",
        style: GoogleFonts.sora(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
