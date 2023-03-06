import 'package:http/http.dart' as http;
import 'regularmodel.dart';

class RegularApi {
  static var client = http.Client();

  static Future fetPostData() async {
    var response = await client.get(Uri.parse(
        "https://script.google.com/macros/s/AKfycbwUodmPV7RNV_Y1uXjJFfi91rP9t2RhfKR3LC25h1lVAuE-Mgwr2r4BWUshQncHdhsp/exec"));

    if (response.statusCode == 200) {
      var postjsonData = response.body;

      print(postjsonData);
      return regularModelFromJson(postjsonData);
    }
  }
}
