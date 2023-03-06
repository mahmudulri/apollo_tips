import 'package:flutter/material.dart';

class Demopage extends StatelessWidget {
  const Demopage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    TextEditingController mycontoller = TextEditingController();
    String value1 = '';
    String value2 = '';
    String value3 = '';
    String value4 = '';

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.10,
            ),
            Container(
              height: 200,
              width: screenWidth - 100,
              decoration: BoxDecoration(color: Colors.grey),
              child: TextField(
                maxLines: 5,
                controller: mycontoller,
                decoration: InputDecoration(
                  hintText: "enter your text",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.10,
            ),

            // String myName = "Over 2.5 @1.50";
            // String before = myName.substring(0, myName.indexOf('@'));
            // String after = myName.substring(myName.indexOf('@') + 1, myName.length);
            // print(before);
            // print(after);
            GestureDetector(
              onTap: () {
                // print(mycontoller.text
                //     .substring(0, mycontoller.text.indexOf('#')));
                // print(mycontoller.text.substring(
                //     mycontoller.text.indexOf('#') + 1,
                //     mycontoller.text.indexOf('*')));

                // print(mycontoller.text.substring(
                //     mycontoller.text.indexOf('*') + 1,
                //     mycontoller.text.indexOf('@')));
                // print(mycontoller.text.substring(
                //     mycontoller.text.indexOf('@') + 1,
                //     mycontoller.text.length));

                //.................
                // value1 = mycontoller.text
                //     .substring(0, mycontoller.text.indexOf('#'));

                // value2 = mycontoller.text.substring(
                //     mycontoller.text.indexOf('#') + 1,
                //     mycontoller.text.indexOf('*'));

                // value3 = mycontoller.text.substring(
                //     mycontoller.text.indexOf('*') + 1,
                //     mycontoller.text.indexOf('@'));

                // value4 = mycontoller.text.substring(
                //     mycontoller.text.indexOf('@') + 1, mycontoller.text.length);
              },
              child: Container(
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    "Submit Data",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
