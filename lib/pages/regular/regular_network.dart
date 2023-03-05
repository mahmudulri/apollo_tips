import 'package:http/http.dart' as http;
import 'regularmodel.dart';

class RegularApi {
  static var client = http.Client();

  static Future fetPostData() async {
    var response = await client.get(Uri.parse(
        "https://script.google.com/macros/s/AKfycbz0yuiAZVUrGJlfk-paTs6eildZjSeLMvqrcTWhUa_S2i37RbKzmklqbsbHxXnnNHjD/exec"));

    if (response.statusCode == 200) {
      var postjsonData = response.body;

      print(postjsonData);
      return regularModelFromJson(postjsonData);
    }
  }
}
