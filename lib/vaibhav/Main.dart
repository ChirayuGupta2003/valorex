
import 'package:flutter/material.dart';
import 'package:valorex/Naman/main.dart';
import 'package:valorex/vaibhav/loadingscreen.dart';
import 'package:valorex/Mukul/main.dart';
import 'package:valorex/Dhruv/maps.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/loadingscreen',
  routes: {
   '/loadingscreen': (context)=> Loading(),
    '/homescreen':(context)=> HomePage(),
    '/agents':(context)=> Agents(),
    '/mapshomescreen': (context)=> Test(),
  },
),
);