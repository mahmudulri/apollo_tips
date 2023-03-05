import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegularTips extends StatelessWidget {
  const RegularTips({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: Column(
            children: [
              Text(
                "Regular Tips",
                style: GoogleFonts.oswald(
                  fontSize: 25,
                  color: Colors.white38,
                ),
              ),
              Text(
                "04 Feb 2023",
                style: GoogleFonts.oswald(
                  fontSize: 20,
                  color: Colors.white38,
                ),
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 3,
                    );
                  },
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      height: screenHeight * 0.130,
                      width: screenWidth,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 66, 117, 129),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 5,
                        ),
                        child: Column(
                          children: [],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
