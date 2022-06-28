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
        '/guns-odin': (context) => GunsScreen(body: body['data'][0]), //odin
        '/guns-ares': (context) => GunsScreen(body: body['data'][1]), //ares
        '/guns-vandal': (context) => GunsScreen(body: body['data'][2]), //vandal
        '/guns-bulldog': (context) => GunsScreen(body: body['data'][3]), //phantom
        '/guns-phantom': (context) => GunsScreen(body: body['data'][4]), //bulldog
        '/guns-judge': (context) => GunsScreen(body: body['data'][5]), //judge
        '/guns-bucky': (context) => GunsScreen(body: body['data'][6]), //bucky
        '/guns-frenzy': (context) => GunsScreen(body: body['data'][7]), //frenzy
        '/guns-classic': (context) => GunsScreen(body: body['data'][8]), //classic
        '/guns-ghost': (context) => GunsScreen(body: body['data'][9]), //ghost
        '/guns-sheriff': (context) => GunsScreen(body: body['data'][10]), //sheriff
        '/guns-shorty': (context) => GunsScreen(body: body['data'][11]), //shorty
        '/guns-operator': (context) => GunsScreen(body: body['data'][12]), //operator
        '/guns-guardian': (context) => GunsScreen(body: body['data'][13]), //guardian
        '/guns-marshal': (context) => GunsScreen(body: body['data'][14]), //marhsal
        '/guns-specter': (context) => GunsScreen(body: body['data'][15]), //specter
        '/guns-stinger': (context) => GunsScreen(body: body['data'][16]), //stinger
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
