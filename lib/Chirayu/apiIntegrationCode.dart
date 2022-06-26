import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.parse("https://valorant-api.com/v1/maps");
  var response = await http.get(url);
  var body = jsonDecode(response.body);
  for (var i = 0; i < body["data"].length; i++) {
    print(body["data"][i]["assetPath"]);
  }
}
