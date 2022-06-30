
import 'package:flutter/material.dart';
import 'package:valorex/Naman/main.dart';
import 'package:valorex/vaibhav/loadingscreen.dart';
import 'package:valorex/Mukul/main.dart';
import 'package:valorex/Dhruv/maps.dart';
import 'package:valorex/Nandika/gunsList.dart';
import 'package:valorex/Mukul/Character_info/Brimstone.dart';
import 'package:valorex/Mukul/Character_info/Phoenix.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/loadingscreen',
  routes: {
    '/loadingscreen': (context)=> Loading(),
    '/homescreen':(context)=> HomePage(),
    '/agents':(context)=> Agents(),
    '/BRIMSTONE':(context)=> Brimstone(),
    '/PHOENIX':(context)=> Phoenix(),
    '/mapshomescreen': (context)=> Test(),
    '/gunshomescreen': (context)=> ListViewHomePage(),
  },
  debugShowCheckedModeBanner: false,
),
);