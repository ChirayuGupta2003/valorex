// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, camel_case_types

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

Future<List<String>> Character_info(index) async{
  var url = Uri.parse("https://valorant-api.com/v1/agents");
  var response = await http.get(url);
  var body = jsonDecode(response.body);
  body = body["data"][index];
  List<String> Info= [];
  // var characterInfo = body.map((index) => index);
  Info.add(body['displayName']);
  Info.add(body['description']);
  Info.add(body['abilities'][0]['displayName']);
  Info.add(body['abilities'][0]['description']);
  Info.add(body['abilities'][0]['displayIcon']);
  Info.add(body['abilities'][1]['displayName']);
  Info.add(body['abilities'][1]['description']);
  Info.add(body['abilities'][1]['displayIcon']);
  Info.add(body['abilities'][2]['displayName']);
  Info.add(body['abilities'][2]['description']);
  Info.add(body['abilities'][2]['displayIcon']);
  Info.add(body['abilities'][3]['displayName']);
  Info.add(body['abilities'][3]['description']);
  Info.add(body['abilities'][3]['displayIcon']);
  // print(Info);
  return Info;
}

void main(a)=> runApp(MaterialApp(
  home: character1(),
  debugShowCheckedModeBanner: false,
));

class character1 extends StatefulWidget {
  const character1({Key? key}) : super(key: key);

  @override
  State<character1> createState() => _characterState();
}

class _characterState extends State<character1> {
  // Future<List<String>> info = Character_info(a);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          body: Text("Hello"),
        )
    );
  }
}
