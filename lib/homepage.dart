import 'package:apollo_betting_tips/pages/regular/regular_tips.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'widgets/widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/background.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 100,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Apollo Betting Tips",
                    style: GoogleFonts.oswald(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.10,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => RegularTips());
                },
                child: buttonName(
                  screenWidth: screenWidth,
                  btname: "Regular Tips",
                  screenHeight: screenHeight,
                ),
              ),
              buttonName(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                btname: "Daily 5+ ODDS",
              ),
              buttonName(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                btname: "Combo Tips",
              ),
              buttonName(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                btname: "Sure Tips",
              ),
              buttonName(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                btname: "Daily Bonus Tips",
              ),
            ],
          ),
        ),
      ),
    );
  }
}


  // String myName = "Over 2.5 @1.50";
  // String before = myName.substring(0, myName.indexOf('@'));
  // String after = myName.substring(myName.indexOf('@') + 1, myName.length);
  // print(before);
  // print(after);