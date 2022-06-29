// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'weaponClass.dart';
import 'weaponListCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewHomePage(),
    );
  }
}

class ListViewHomePage extends StatefulWidget {
  const ListViewHomePage({Key? key}) : super(key: key);

  @override
  State<ListViewHomePage> createState() => _ListViewHomePageState();
}

class _ListViewHomePageState extends State<ListViewHomePage> {
  List<Weapons> arr = [
    Weapons(
        route: '/guns-classic',
        title: 'CLASSIC',
        description: 'sidearms',
        image: 'assets/guns/1.png'),
    Weapons(
        route: '/guns-shorty',
        title: 'SHORTY',
        description: 'sidearms',
        image: 'assets/guns/2.png'),
    Weapons(
        route: '/guns-frenzy',
        title: 'FRENZY',
        description: 'sidearms',
        image: 'assets/guns/3.png'),
    Weapons(
        route: '/guns-ghost',
        title: 'GHOST',
        description: 'sidearms',
        image: 'assets/guns/4.webp'),
    Weapons(
        route: '/guns-sheriff',
        title: 'SHERIFF',
        description: 'sidearms',
        image: 'assets/guns/5.webp'),
    Weapons(
        route: '/guns-stinger',
        title: 'STINGER',
        description: 'smgs',
        image: 'assets/guns/6.webp'),
    Weapons(
        route: '/guns-specter',
        title: 'SPECTRE',
        description: 'smgs',
        image: 'assets/guns/7.webp'),
    Weapons(
        route: '/guns-bucky',
        title: 'BUCKY',
        description: 'shotguns',
        image: 'assets/guns/8.png'),
    Weapons(
        route: '/guns-judge',
        title: 'JUDGE',
        description: 'shotguns',
        image: 'assets/guns/9.png'),
    Weapons(
        route: '/guns-bulldog',
        title: 'BULLDOG',
        description: 'rifles',
        image: 'assets/guns/10.webp'),
    Weapons(
        route: '/guns-guardian',
        title: 'GUARDIAN',
        description: 'rifles',
        image: 'assets/guns/11.png'),
    Weapons(
        route: '/guns-phantom',
        title: 'PHANTOM',
        description: 'rifles',
        image: 'assets/guns/12.png'),
    Weapons(
        route: '/guns-vandal',
        title: 'VANDAL',
        description: 'rifles',
        image: 'assets/guns/13.webp'),
    Weapons(
        route: '/guns-marshal',
        title: 'MARSHAL',
        description: 'snipers',
        image: 'assets/guns/14.png'),
    Weapons(
        route: '/guns-operator',
        title: 'OPERATOR',
        description: 'snipers',
        image: 'assets/guns/15.png'),
    Weapons(
        route: '/guns-ares',
        title: 'ARES',
        description: 'heavies',
        image: 'assets/guns/16.png'),
    Weapons(
        route: '/guns-odin',
        title: 'ODIN',
        description: 'heavies',
        image: 'assets/guns/17.png'),
    Weapons(
        route: '/guns-knife',
        title: 'TACTICAL KNIFE',
        description: 'melee',
        image: 'assets/guns/18.png'),
  ];

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width * 0.6;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF172535),
        appBar: AppBar(
          title: new Container(
            height: 70,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "GUNS",
                    style: TextStyle(
                      fontFamily: 'Valorant1',
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  )
                ]),
          ),
          flexibleSpace: Image(
            image: AssetImage('assets/background/background.jpg'),
            fit: BoxFit.cover,
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF0f1923),
          toolbarHeight: 80,
        ),
        body: ListView(
          children: <Widget>[
                 // top appbar
              ] +
              arr.map<Widget>((e) => WeaponListCard(index: e)).toList(),
        ),
      ),
    );
  }
}
