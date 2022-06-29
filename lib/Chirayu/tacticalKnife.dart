// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'statsCard.dart';

class TacticalKnife extends StatefulWidget {
  const TacticalKnife({Key? key}) : super(key: key);

  @override
  State<TacticalKnife> createState() => _TacticalKnifeState();
}

class _TacticalKnifeState extends State<TacticalKnife> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF172535),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
              height: 130,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/background/background.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(30),
                //   bottomRight: Radius.circular(30),
                // ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [

                  Image.network(
                    "https://media.valorant-api.com/weapons/2f59173c-4bed-b6c3-2191-dea9b58be9c7/displayicon.png",
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Tactical Knife",
                        style: TextStyle(
                          fontFamily: "Valorant1",
                          fontSize: 30,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 5,
                    left: 5,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ), // top appbar
            Container(
              margin: EdgeInsets.fromLTRB(5, 15, 5, 5),
              color: Colors.white12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      border: Border(
                        top: BorderSide(
                          color: Colors.white,
                        ),
                        bottom: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            child: Text(
                              "PRIMARY FIRE",
                              style: TextStyle(
                                color: Colors.white70,
                                fontFamily: "Valorant2",
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Image.network(
                                "https://static.wikia.nocookie.net/valorant/images/2/29/Firemode.png/revision/latest/scale-to-width-down/12?cb=20210222215856",
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "-",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: "Valorant2",
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Image.network(
                                "https://static.wikia.nocookie.net/valorant/images/9/93/WallPenetration.png/revision/latest/scale-to-width-down/12?cb=20210511155303",
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "-",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: "Valorant2",
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          StatsCard(
                            heading: "fire rate",
                            value: "-",
                            units: "rds/sec",
                            margin: EdgeInsets.fromLTRB(0, 8, 4, 4),
                          ),
                          StatsCard(
                            heading: "run speed",
                            value: "-",
                            units: "m/sec",
                            margin: EdgeInsets.fromLTRB(4, 8, 0, 4),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StatsCard(
                            heading: "equip speed",
                            value: "-",
                            units: "sec",
                            margin: EdgeInsets.fromLTRB(0, 4, 4, 4),
                          ),
                          StatsCard(
                            heading: "1st shot spread",
                            value: "-",
                            units: "deg (hip/ads)",
                            margin: EdgeInsets.fromLTRB(4, 4, 0, 4),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StatsCard(
                            heading: "reload speed",
                            value: "-",
                            units: "sec",
                            margin: EdgeInsets.fromLTRB(0, 4, 4, 8),
                          ),
                          StatsCard(
                            heading: "magazine",
                            value: "-",
                            units: "rds",
                            margin: EdgeInsets.fromLTRB(4, 4, 0, 8),
                          ),
                        ],
                      ),
                    ],
                  ), // stats grid
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
