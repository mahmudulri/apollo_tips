import 'package:apollo_betting_tips/pages/regular/regular_controller.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class RegularTips extends StatefulWidget {
  RegularTips({super.key});

  @override
  State<RegularTips> createState() => _RegularTipsState();
}

class _RegularTipsState extends State<RegularTips> {
  RegularController regularController = Get.put(RegularController());

  @override
  void initState() {
    super.initState();
  }

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
              Expanded(child: Obx(() {
                if (regularController.isLoading.value) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 3,
                      );
                    },
                    itemCount: regularController.allmytips.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: screenHeight * 0.130,
                        width: screenWidth,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.only(
                              right: 5,
                            ),
                            child: Text(regularController.allmytips[index].legue
                                .toString())),
                      );
                    },
                  );
                }
              })),
            ],
          ),
        ),
      ),
    );
  }
}
