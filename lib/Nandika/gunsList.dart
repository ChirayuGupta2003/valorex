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
        title: 'CLASSIC', description: 'sidearms', image: 'assets/guns/1.png'),
    Weapons(
        title: 'SHORTY', description: 'sidearms', image: 'assets/guns/2.png'),
    Weapons(
        title: 'FRENZY', description: 'sidearms', image: 'assets/guns/3.png'),
    Weapons(
        title: 'GHOST', description: 'sidearms', image: 'assets/guns/4.webp'),
    Weapons(
        title: 'SHERIFF', description: 'sidearms', image: 'assets/guns/5.webp'),
    Weapons(title: 'STINGER', description: 'smgs', image: 'assets/guns/6.webp'),
    Weapons(title: 'SPECTRE', description: 'smgs', image: 'assets/guns/7.webp'),
    Weapons(
        title: 'BUCKY', description: 'shotguns', image: 'assets/guns/8.png'),
    Weapons(
        title: 'JUDGE', description: 'shotguns', image: 'assets/guns/9.png'),
    Weapons(
        title: 'BULLDOG', description: 'rifles', image: 'assets/guns/10.webp'),
    Weapons(
        title: 'GUARDIAN', description: 'rifles', image: 'assets/guns/11.png'),
    Weapons(
        title: 'PHANTOM', description: 'rifles', image: 'assets/guns/12.png'),
    Weapons(
        title: 'VANDAL', description: 'rifles', image: 'assets/guns/13.webp'),
    Weapons(
        title: 'MARSHAL', description: 'snipers', image: 'assets/guns/14.png'),
    Weapons(
        title: 'OPERATOR', description: 'snipers', image: 'assets/guns/15.png'),
    Weapons(title: 'ARES', description: 'heavies', image: 'assets/guns/16.png'),
    Weapons(title: 'ODIN', description: 'heavies', image: 'assets/guns/17.png'),
    Weapons(
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
        body: SafeArea(
          child: ListView(
            children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    height: 130,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/background/background.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "GUNS",
                              style: TextStyle(
                                fontFamily: "Valorant1",
                                fontSize: 50,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ), // top appbar
                ] +
                arr.map<Widget>((e) => WeaponListCard(index: e)).toList(),
          ),
        ),
      ),
    );
  }
}
