import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({super.key});

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.location_on_rounded))
        ],
      ),
      body: Column(
        children: [
          Text(
            "10 minutes left",
            style: GoogleFonts.sora(fontWeight: FontWeight.w600, fontSize: 15),
          ),
          Text(
            "Delivery to : Jaipur, Rajasthan, Bharat",
            style: GoogleFonts.sora(fontWeight: FontWeight.w600, fontSize: 12),
          ),
          const SizedBox(
            height: 40,
          ),
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 110,
              width: 340,
              child: Row(
                children: [
                  Material(
                    elevation: 5,
                    child: SizedBox(
                      height: 62,
                      width: 62,
                      child: Image.asset(
                        "assets/MaskGroup.png",
                        height: 40,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivered your order",
                        style: GoogleFonts.sora(
                            fontWeight: FontWeight.w600, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "We deliver your goods to you in the shortes possible time.",
                        softWrap: true,
                        style:
                            GoogleFonts.sora(fontSize: 12, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
