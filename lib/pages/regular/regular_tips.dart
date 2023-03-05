import 'dart:convert';

import 'package:apollo_betting_tips/pages/regular/custom_model.dart';
import 'package:apollo_betting_tips/pages/regular/regular_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class RegularTips extends StatefulWidget {
  RegularTips({super.key});

  @override
  State<RegularTips> createState() => _RegularTipsState();
}

class _RegularTipsState extends State<RegularTips> {
  // RegularController regularController = Get.put(RegularController());

  List<CustomModel> feedbacks = <CustomModel>[];

  getmyFinalData() async {
    var raw = await http.get(Uri.parse(
        "https://script.google.com/macros/s/AKfycbz0yuiAZVUrGJlfk-paTs6eildZjSeLMvqrcTWhUa_S2i37RbKzmklqbsbHxXnnNHjD/exec"));
    var jsonData = jsonDecode(raw.body);
    // print(jsonData);

    // feedbacks = jsonData.map((json) => CustomModel.fromJson(json));

    jsonData.forEach((element) {
      print("$element  the is next");

      CustomModel customModel = CustomModel();
      customModel.legue = element['legue'];
      customModel.team = element['team'];
      customModel.score = element['score'];

      feedbacks.add(customModel);
      print(feedbacks[0].legue.toString());
    });

    // print(feedbacks[0].legue);
  }

  @override
  void initState() {
    getmyFinalData();

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
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 3,
                    );
                  },
                  itemCount: feedbacks.length,
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
                        child: MytipsData(
                          legue: feedbacks[index].legue,
                          team: feedbacks[index].team,
                          score: feedbacks[index].score,
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

class MytipsData extends StatelessWidget {
  String? legue;
  String? team;
  String? score;

  MytipsData({
    this.legue,
    this.team,
    this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text('from $legue')],
    );
  }
}
