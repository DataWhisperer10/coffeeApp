import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded)),
          title: Center(
            child: Text(
              "Profile",
              style:
                  GoogleFonts.sora(fontSize: 17, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          "assets/profileimage.png",
                          fit: BoxFit.fill,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Gajanand Kumawat",
                    style: GoogleFonts.sora(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    "Jaipur, Rajasthan, Bharat ",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    "gajanandkkumawat95@gmail.com ",
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10)),
                    height: 180,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          "Get a FREE COFFE",
                          style: GoogleFonts.sora(
                              color: Colors.black, fontSize: 14),
                        ),
                        Text(
                          "Terms & Conditions",
                          style: GoogleFonts.sora(
                              color: Color.fromARGB(255, 136, 123, 2),
                              fontSize: 10),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset("assets/coffePromo.png")),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Share your referral Code",
                          style: GoogleFonts.sora(
                              color: Color.fromARGB(255, 136, 123, 2),
                              fontSize: 10),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.brown,
                                borderRadius: BorderRadius.circular(10)),
                            height: 35,
                            width: 270,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Center(
                                  child: Text(
                                    "A 1 2 B 3 C",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Icon(
                                  Icons.forward_to_inbox_rounded,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  profileContactCard(),
                  const SizedBox(
                    height: 30,
                  ),
                  profilePaymentCard(),
                  const SizedBox(
                    height: 30,
                  ),
                  profileAddMoneyCard(),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 179, 51, 5),
                        borderRadius: BorderRadius.circular(10)),
                    height: 35,
                    width: 270,
                    child: Center(
                      child: Text(
                        "Log Out",
                        style: GoogleFonts.sora(
                            fontSize: 19,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Widget profileContactCard() {
    return Card(
      surfaceTintColor: Colors.white,
      elevation: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.contact_mail_outlined),
          ),
          Text(
            "Inbox",
            style: GoogleFonts.sora(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          const SizedBox(
            width: 20,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios_rounded)),
        ],
      ),
    );
  }

  Widget profilePaymentCard() {
    return Card(
      surfaceTintColor: Colors.white,
      elevation: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.attach_money_rounded),
          ),
          Text(
            "Payments",
            style: GoogleFonts.sora(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          const SizedBox(
            width: 20,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios_rounded)),
        ],
      ),
    );
  }

  Widget profileAddMoneyCard() {
    return Card(
      surfaceTintColor: Colors.white,
      elevation: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.attach_money_rounded),
          ),
          Text(
            "Add Money to Wallet",
            style: GoogleFonts.sora(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          const SizedBox(
            width: 20,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios_rounded)),
        ],
      ),
    );
  }
}
