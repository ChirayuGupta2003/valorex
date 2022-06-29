import 'package:flutter/material.dart';
import 'package:valorex/Dhruv/Heaven.dart';
import 'package:valorex/Dhruv/Split.dart';
import 'package:valorex/Naman/main.dart';
import 'package:valorex/vaibhav/loadingscreen.dart';
import 'package:valorex/Mukul/main.dart';
import 'package:valorex/Dhruv/maps.dart';
import 'package:valorex/Nandika/gunsList.dart';
import 'package:valorex/Mukul/Character_info/Brimstone.dart';
import 'package:valorex/Mukul/Character_info/Phoenix.dart';
import 'package:valorex/Dhruv/Pearl.dart';
import 'package:valorex/Dhruv/Ascent.dart';
import 'package:valorex/Dhruv/Bind.dart';
import 'package:valorex/Dhruv/Breeze.dart';
import 'package:valorex/Dhruv/Fracture.dart';

import 'package:valorex/Dhruv/Icebox.dart';


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
    '/pearl':(context)=>Pearl(),
    '/ascent':(context)=>Ascent(),
    '/bind':(context)=>Bind(),
    '/fracture':(context)=>Fracture(),
    '/heaven':(context)=>Heaven(),
    '/icebox':(context)=>Icebox(),
    '/split':(context)=>Split(),
    '/breeze':(context)=>Breeze(),


  },
  debugShowCheckedModeBanner: false,
),
);