import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.parse("https://valorant-api.com/v1/weapons");
  var response = await http.get(url);
  var body = jsonDecode(response.body);
  body = body["data"][1]["weaponStats"]["damageRanges"];
  var startRanges = body.map((index) => index);
  print(startRanges);
}
