import 'package:flutter/material.dart';
import 'package:valorex/Mukul/Character_info/Breach.dart';
import 'package:valorex/Mukul/Character_info/Killjoy.dart';
import 'package:valorex/Naman/main.dart';
import 'package:valorex/vaibhav/loadingscreen.dart';
import 'package:valorex/Mukul/Character_Main.dart';
import 'package:valorex/Dhruv/maps.dart';
import 'package:valorex/Nandika/gunsList.dart';
import 'package:valorex/Mukul/Character_info/Brimstone.dart';
import 'package:valorex/Mukul/Character_info/Phoenix.dart';
import 'package:valorex/Mukul/Character_info/Sage.dart';
import 'package:valorex/Mukul/Character_info/Sova.dart';
import 'package:valorex/Mukul/Character_info/Viper.dart';
import 'package:valorex/Mukul/Character_info/Cypher.dart';
import 'package:valorex/Mukul/Character_info/Reyna.dart';
import 'package:valorex/Mukul/Character_info/Omen.dart';
import 'package:valorex/Mukul/Character_info/Jett.dart';
import 'package:valorex/Mukul/Character_info/Raze.dart';
import 'package:valorex/Mukul/Character_info/Skye.dart';
import 'package:valorex/Mukul/Character_info/Yoru.dart';
import 'package:valorex/Mukul/Character_info/Astra.dart';
import 'package:valorex/Mukul/Character_info/Kayo.dart';
import 'package:valorex/Mukul/Character_info/Chamber.dart';
import 'package:valorex/Mukul/Character_info/Neon.dart';
import 'package:valorex/Mukul/Character_info/Fade.dart';
import 'package:valorex/Mukul/Character_info/Fade.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/loadingscreen',
  routes: {
    '/loadingscreen': (context)=> Loading(),
    '/homescreen':(context)=> HomePage(),
    '/agents':(context)=> Agents(),
    '/BRIMSTONE':(context)=> Brimstone(),
    '/PHOENIX':(context)=> Phoenix(),
    '/SAGE':(context)=> Sage(),
    '/SOVA':(context)=> Sova(),
    '/VIPER':(context)=> Viper(),
    '/CYPHER':(context)=> Cypher(),
    '/REYNA':(context)=> Reyna(),
    '/KILLJOY':(context)=> Killjoy(),
    '/BREACH':(context)=> Breach(),
    '/OMEN':(context)=> Omen(),
    '/JETT':(context)=> Jett(),
    '/RAZE':(context)=> Raze(),
    '/SKYE':(context)=> Skye(),
    '/YORU':(context)=> Yoru(),
    '/ASTRA':(context)=> Astra(),
    '/KAY/O':(context)=> Kayo(),
    '/CHAMBER':(context)=> Chamber(),
    '/NEON':(context)=> Neon(),
    '/FADE':(context)=> Fade(),
    '/mapshomescreen': (context)=> Test(),
    '/gunshomescreen': (context)=> ListViewHomePage(),
  },
  debugShowCheckedModeBanner: false,
),
);