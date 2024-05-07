import 'package:coffee/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masonry_grid/masonry_grid.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  bool isFavorite = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BottomNavBar()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            )),
        title: Center(
          child: Text(
            "Details",
            style: GoogleFonts.sora(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: MasonryGrid(
          column: 2,
          children: List.generate(10, (index) {
            return Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/Cup3.png', // Replace with your image path
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Cold Coffee'),
                              SizedBox(height: 4),
                              Text('Ratings: 4.5'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                        top: 20,
                        right: 20,
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                            icon: Icon(
                              isFavorite
                                  ? Icons.favorite_rounded
                                  : Icons.favorite_outline_rounded,
                              color: isFavorite
                                  ? Color.fromARGB(255, 230, 112, 151)
                                  : Colors.white,
                            )))
                  ],
                )

                //  Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Image.asset(
                //       'assets/Cup3.png', // Replace with your image path
                //       height: 150,
                //       width: double.infinity,
                //       fit: BoxFit.cover,
                //     ),
                //     Padding(
                //       padding: EdgeInsets.all(8),
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Text('Image $index'),
                //           SizedBox(height: 4),
                //           Text('Ratings: 4.5'), // Replace with your ratings data
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
                );
          }),
        ),
      ),
    );
  }
}
