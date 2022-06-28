import 'package:valorex/Chirayu/guns.dart';
import 'package:flutter/material.dart';
import 'package:valorex/Naman/main.dart';
import 'package:valorex/vaibhav/loadingscreen.dart';
import 'package:valorex/Mukul/main.dart';
import 'package:valorex/Dhruv/maps.dart';
import 'package:valorex/Nandika/gunsList.dart';
import 'package:valorex/Mukul/Character_info/Brimstone.dart';
import 'package:valorex/Mukul/Character_info/Phoenix.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.parse("https://valorant-api.com/v1/weapons");
  var response = await http.get(url);
  var body = jsonDecode(response.body);
  runApp(
    MaterialApp(
      initialRoute: '/loadingscreen',
      routes: {
        '/loadingscreen': (context) => Loading(),
        '/homescreen': (context) => HomePage(),
        '/agents': (context) => Agents(),
        '/BRIMSTONE': (context) => Brimstone(),
        '/PHOENIX': (context) => Phoenix(),
        '/mapshomescreen': (context) => Test(),
        '/gunshomescreen': (context) => ListViewHomePage(),
        '/guns-0': (context) => GunsScreen(body: body['data'][0]),
        '/guns-1': (context) => GunsScreen(body: body['data'][1]),
        '/guns-2': (context) => GunsScreen(body: body['data'][2]),
        '/guns-3': (context) => GunsScreen(body: body['data'][3]),
        '/guns-4': (context) => GunsScreen(body: body['data'][4]),
        '/guns-5': (context) => GunsScreen(body: body['data'][5]),
        '/guns-6': (context) => GunsScreen(body: body['data'][6]),
        '/guns-7': (context) => GunsScreen(body: body['data'][7]),
        '/guns-8': (context) => GunsScreen(body: body['data'][8]),
        '/guns-9': (context) => GunsScreen(body: body['data'][9]),
        '/guns-10': (context) => GunsScreen(body: body['data'][10]),
        '/guns-11': (context) => GunsScreen(body: body['data'][11]),
        '/guns-12': (context) => GunsScreen(body: body['data'][12]),
        '/guns-13': (context) => GunsScreen(body: body['data'][13]),
        '/guns-14': (context) => GunsScreen(body: body['data'][14]),
        '/guns-15': (context) => GunsScreen(body: body['data'][15]),
        '/guns-16': (context) => GunsScreen(body: body['data'][16]),
        '/guns-17': (context) => GunsScreen(body: body['data'][17]),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
