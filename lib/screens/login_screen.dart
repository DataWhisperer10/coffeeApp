import 'package:coffee/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Log In",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.sora(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Email",
                        hintText: "example@example.com"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Password",
                        hintText: "Abc@123d",
                        suffixIcon: Icon(
                          Icons.remove_red_eye_rounded,
                        )),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 125, 38,
                                  7)), // Set brown background color
                          maximumSize: MaterialStateProperty.all<Size>(
                              Size.fromWidth(double.infinity)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Add optional rounded corners
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        child: Center(
                          child: Text(
                            "Log In",
                            style: GoogleFonts.sora(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
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
