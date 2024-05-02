import 'package:coffee/screens/cart_screen.dart';
import 'package:coffee/screens/favorite_screen.dart';
import 'package:coffee/screens/home_screen.dart';
import 'package:coffee/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: Container(
            height: 60,
            width: double.infinity,
            color: Colors.black,
            child: const TabBar(
              tabs: [
                Tab(
                  text: "Home",
                  icon: Icon(Icons.home),
                ),
                Tab(
                  text: "Favorite",
                  icon: Icon(Icons.favorite_border_rounded),
                ),
                Tab(
                  text: "Cart",
                  icon: Icon(Icons.shopping_basket_rounded),
                ),
                Tab(
                  text: "Profile",
                  icon: Icon(Icons.person_2_rounded),
                )
              ],
              labelColor: Colors.brown,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.brown,
            ),
          ),
          body: const TabBarView(children: [
            HomeScreen(),
            FavoriteScreen(),
            CartScreen(),
            ProfileScreen()
          ]),
        ));
  }
}
