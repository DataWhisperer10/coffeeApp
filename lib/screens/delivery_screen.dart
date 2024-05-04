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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "10 minutes left",
              style:
                  GoogleFonts.sora(fontWeight: FontWeight.w600, fontSize: 15),
            ),
            Text(
              "Delivery to : Jaipur, Rajasthan, Bharat",
              style:
                  GoogleFonts.sora(fontWeight: FontWeight.w600, fontSize: 12),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300)),
              height: 110,
              width: 340,
              child: Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10)),
                    height: 62,
                    width: 62,
                    child: Image.asset(
                      "assets/MaskGroup.png",
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Delivered your order",
                          style: GoogleFonts.sora(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "We deliver your goods to you in the shortest possible time.",
                          softWrap: true,
                          style: GoogleFonts.sora(
                              fontSize: 12, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                          height: 54,
                          width: 54,
                          child: Image.asset("assets/driver.png")),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            "Johan Hawn",
                            style: GoogleFonts.sora(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Personal Courier",
                            style: GoogleFonts.sora(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10)),
                    height: 54,
                    width: 54,
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/phone.png",
                        fit: BoxFit.fill,
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
