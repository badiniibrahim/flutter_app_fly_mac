import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:fly_mac/utils/colors.style.dart';
import 'package:fly_mac/utils/constants.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/home_controller.dart';

typedef MenuEntry = DropdownMenuEntry<String>;

final List<MenuEntry> menuPassengerEntries = UnmodifiableListView<MenuEntry>(
  passenger
      .map<MenuEntry>((String name) => MenuEntry(value: name, label: name)),
);

final List<MenuEntry> menuClassesEntries = UnmodifiableListView<MenuEntry>(
  classes.map<MenuEntry>((String name) => MenuEntry(value: name, label: name)),
);

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGray,
      appBar: AppBar(
        backgroundColor: AppColors.lightGray,
        centerTitle: false,
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello there..!",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: AppColors.customGray,
                  letterSpacing: .5,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Text(
              "MacRaymond",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Center(
                  child: Card(
                    color: Colors.white,
                    child: SizedBox(
                      height: 485,
                      width: 390,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 16),
                          Center(
                            child: Text(
                              "Book your Flight",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: AppColors.darkGray,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Center(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.76,
                              child: SegmentedButton(
                                showSelectedIcon: false,
                                style: SegmentedButton.styleFrom(
                                  backgroundColor: AppColors.lightGray,
                                  selectedForegroundColor: Colors.white,
                                  selectedBackgroundColor: AppColors.amber,
                                  textStyle: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      color: AppColors.customGray,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                segments: const [
                                  ButtonSegment(
                                      label: Text("One way"), value: 15),
                                  ButtonSegment(
                                      label: Text("Round Trip"), value: 30),
                                  ButtonSegment(
                                      label: Text("Multi-city"), value: 45),
                                ],
                                selected: const {15},
                                onSelectionChanged: (selections) => {},
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "From",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      color: AppColors.customGray,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const SizedBox(
                                  height: 45.0,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "To",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      color: AppColors.customGray,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 45.0,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Departure",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      color: AppColors.customGray,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 45.0,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.calendar_month),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Passenger",
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                              color: AppColors.customGray,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                        DropdownMenu<String>(
                                          initialSelection: passenger.first,
                                          dropdownMenuEntries:
                                              menuPassengerEntries,
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Class",
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                              color: AppColors.customGray,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                        DropdownMenu<String>(
                                          initialSelection: classes.first,
                                          dropdownMenuEntries:
                                              menuClassesEntries,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 20),
                                SizedBox(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width,
                                  child: ElevatedButton(
                                    style: const ButtonStyle(
                                        backgroundColor:
                                            WidgetStatePropertyAll<Color>(
                                                AppColors.c1)),
                                    onPressed: () {},
                                    child: Text(
                                      "Search",
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Current offer",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Text(
                          "See all",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: AppColors.c1,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Card(
                    color: Colors.white,
                    child: SizedBox(
                      height: 122,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Container(
                            color: AppColors.c2,
                            child: SizedBox(
                                height: 122,
                                width: 150,
                                child: Container(
                                  color: AppColors.c2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                          "assets/images/mastercardlogo.png"),
                                      const SizedBox(height: 2),
                                      Text(
                                        "25%OFF",
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  textAlign: TextAlign.start,
                                  "25% discount ",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      color: Color(0xFF272726),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 19,
                                    ),
                                  ),
                                ),
                                Text(
                                  textAlign: TextAlign.start,
                                  "with mastercard",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      color: Color(0xFF272726),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 19,
                                    ),
                                  ),
                                ),
                                Text(
                                  maxLines: 1,
                                  "Get a discount",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Text(
                                  maxLines: 1,
                                  "when you use this.",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 80,
            top: 170,
            child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    color: AppColors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(90))),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.arrow_upward, color: Colors.white),
                    Icon(Icons.arrow_downward, color: Colors.white)
                  ],
                )
                // const Icon(Icons.swap_vertical_circle, color: Colors.white),
                ),
          ),
        ],
      ),
    );
  }
}
