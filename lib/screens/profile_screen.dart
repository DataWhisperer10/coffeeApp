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
          title: Text(
            "Profile",
            style: GoogleFonts.sora(fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/profileimage.png"),
            ),
            Text(
              "Gajanand Kumawat",
              style:
                  GoogleFonts.sora(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Text(
              "Jaipur, Rajasthan, Bharat ",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            Card(
              elevation: 5,
              child: Row(
                children: [Icon(Icons.contact_mail_outlined)],
              ),
            )
          ],
        ));
  }
}
