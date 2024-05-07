import 'package:coffee/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen2 extends StatefulWidget {
  const RegisterScreen2({super.key});

  @override
  State<RegisterScreen2> createState() => _RegisterScreen2State();
}

class _RegisterScreen2State extends State<RegisterScreen2> {
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
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        )),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Register",
                    style: GoogleFonts.sora(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "the_coffee_lover",
                        labelText: "User Name"),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  signUpButton(),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                      "By signing up, you agree to Coffee’s Terms of Service and Privacy Policy.")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget signUpButton() {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(
                    255, 125, 38, 7)), // Set brown background color
            maximumSize: MaterialStateProperty.all<Size>(
                const Size.fromWidth(double.infinity)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10.0), // Add optional rounded corners
              ),
            ),
          ),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: ((context) => const BottomNavBar()),
                ),
                (route) => false);
          },
          child: Text(
            "Sign Up",
            style: GoogleFonts.sora(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
          )),
    );
  }
}
