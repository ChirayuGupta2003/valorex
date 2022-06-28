
import 'package:flutter/material.dart';
import 'package:valorex/Naman/main.dart';
import 'package:valorex/Mukul/main.dart';
import 'package:valorex/Dhruv/maps.dart';
import 'package:valorex/Nandika/gunsList.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/homescreen',
  routes: {

    '/homescreen':(context)=> HomePage(),
    '/agents':(context)=> Agents(),
    '/mapshomescreen': (context)=> Test(),
    '/gunshomescreen': (context)=> ListViewHomePage(),
  },
  debugShowCheckedModeBanner: false,
),
);