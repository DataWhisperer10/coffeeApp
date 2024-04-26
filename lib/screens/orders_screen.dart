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
      child: DefaultTabController(
          length: 2,
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
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
              bottom:
              const TabBar(dividerColor: Colors.black,indicator: BoxDecoration(borderRadius: BorderRadius.),
                tabs: [Tab(text: "Deliver"),Tab(text: "Pick Up")]),
              
            ),
            
          )),
    );
  }
}
