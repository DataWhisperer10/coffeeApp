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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 155,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(left: 40),
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
                  width: 155,
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
              style:
                  GoogleFonts.sora(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            Text(
              "Jaipur, Rajasthan, Bharat",
              style:
                  GoogleFonts.sora(fontWeight: FontWeight.w600, fontSize: 14),
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
                      style: GoogleFonts.sora(fontSize: 12, color: Colors.grey),
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
                      style: GoogleFonts.sora(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
