import 'package:coffee/screens/delivery_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              "Order",
              style:
                  GoogleFonts.sora(fontWeight: FontWeight.w600, fontSize: 16),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person_4,
                  color: Colors.brown,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.only(left: 20),
                      child: Center(
                        child: Text(
                          "Deliver",
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w600,
                              backgroundColor: Colors.brown,
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.only(right: 20),
                      child: Center(
                        child: Text(
                          "Pick Up",
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  "Delivery Address",
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Text(
                  "Jaipur, Rajasthan, Bharat",
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600, fontSize: 14),
                ),
                Text(
                  "#-234, Palm Residency, Malviya Nagar, Jaipur",
                  style: GoogleFonts.sora(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all()),
                      height: 27,
                      width: 120,
                      child: Center(
                        child: Text(
                          "Edit Address",
                          style: GoogleFonts.sora(
                              fontSize: 12, color: Colors.grey),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all()),
                      height: 27,
                      width: 120,
                      child: Center(
                        child: Text(
                          "Add Note",
                          style: GoogleFonts.sora(
                              fontSize: 12, color: Colors.grey),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Material(
                  elevation: 7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/iconimage.png",
                                height: 54,
                                width: 54,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Cappucino",
                                    style: GoogleFonts.sora(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "with Chocolate",
                                    style: GoogleFonts.sora(
                                        color: Colors.grey, fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 46,
                      ),
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.remove_circle_rounded,
                                  color: Colors.brown,
                                )),
                            Text(
                              ("1"),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add_circle_rounded,
                                  color: Colors.brown,
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 56,
                    width: 415,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/Discount.png",
                                  height: 25,
                                  width: 25,
                                  fit: BoxFit.contain,
                                ),
                                Text(
                                  "1 Discount is applied",
                                  style: GoogleFonts.sora(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Payment Summary",
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Price",
                      style: GoogleFonts.sora(fontSize: 14),
                    ),
                    Text(
                      "\$ 4.9 ",
                      style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600, fontSize: 14),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery Fee",
                      style: GoogleFonts.sora(fontSize: 14),
                    ),
                    Text(
                      "\$ 1.0 ",
                      style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600, fontSize: 14),
                    )
                  ],
                ),
                Divider(),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Payment",
                      style: GoogleFonts.sora(fontSize: 14),
                    ),
                    Text(
                      "\$ 5.9 ",
                      style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600, fontSize: 14),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.attach_money_rounded,
                            color: Colors.brown,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.brown),
                                  child: Text(
                                    "Cash",
                                    style: GoogleFonts.sora(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ))),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black26),
                              ),
                              child: Text(
                                "\$ 5.53",
                                style: GoogleFonts.sora(
                                  color: Colors.black,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const DeliveryScreen())));
                    },
                    child: Container(
                        height: 60,
                        width: 410,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 195, 117, 88),
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(color: Colors.black26)),
                        child: Center(
                          child: Text(
                            "Buy Now",
                            style: GoogleFonts.sora(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
