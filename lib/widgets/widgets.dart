import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class buttonName extends StatelessWidget {
  const buttonName({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.btname,
  });

  final double screenWidth;
  final double screenHeight;
  final String btname;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 3),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          // color: Color(0xff2ecc71),
          color: Color(0xff34495e).withOpacity(0.8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/football.png",
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: screenWidth * 0.020,
              ),
              Text(
                btname,
                style: GoogleFonts.oswald(
                  fontSize: screenHeight * 0.030,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
