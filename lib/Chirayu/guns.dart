// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'statsCard.dart';
import 'damageRange.dart';
import 'damageValueWithRange.dart';

class GunsScreen extends StatefulWidget {
  const GunsScreen({Key? key, required this.body}) : super(key: key);
  final body;

  @override
  State<GunsScreen> createState() => _GunsScreenState(body: body);
}

class _GunsScreenState extends State<GunsScreen> {
  _GunsScreenState({required this.body}) : super();
  final body;

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
                //   bottomLeft: Radius.circular(20),
                //   bottomRight: Radius.circular(20),
                // ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [

                  Image.network(
                    body["displayIcon"],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        body["displayName"],
                        style: TextStyle(
                          fontFamily: "Valorant1",
                          fontSize: 30,
                          color: Colors.white,
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
                                body["weaponStats"]["fireMode"] == null
                                    ? "AUTO"
                                    : "SEMI",
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
                                body["weaponStats"]["wallPenetration"]
                                    .split("::")[1]
                                    .toUpperCase(),
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
                            value: body["weaponStats"]["fireRate"].toString(),
                            units: "rds/sec",
                            margin: EdgeInsets.fromLTRB(0, 8, 4, 4),
                          ),
                          StatsCard(
                            heading: "run speed",
                            value: (6.75 *
                                    body["weaponStats"]["runSpeedMultiplier"])
                                .toStringAsFixed(2),
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
                            value: body["weaponStats"]["equipTimeSeconds"]
                                .toString(),
                            units: "sec",
                            margin: EdgeInsets.fromLTRB(0, 4, 4, 4),
                          ),
                          StatsCard(
                            heading: "1st shot spread",
                            value: body["weaponStats"]["adsStats"] != null
                                ? "${body["weaponStats"]["firstBulletAccuracy"].toStringAsFixed(2)} / ${body["weaponStats"]["adsStats"]["firstBulletAccuracy"] < 0 ? 0 : body["weaponStats"]["adsStats"]["firstBulletAccuracy"].toStringAsFixed(2)}"
                                : "${body["weaponStats"]["firstBulletAccuracy"].toStringAsFixed(2)}",
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
                            value: body["weaponStats"]["reloadTimeSeconds"]
                                .toString(),
                            units: "sec",
                            margin: EdgeInsets.fromLTRB(0, 4, 4, 8),
                          ),
                          StatsCard(
                            heading: "magazine",
                            value:
                                body["weaponStats"]["magazineSize"].toString(),
                            units: "rds",
                            margin: EdgeInsets.fromLTRB(4, 4, 0, 8),
                          ),
                        ],
                      ),
                    ],
                  ), // stats grid
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                                    child: Text(
                                      "DAMAGE",
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 20,
                                        fontFamily: "Valorant2",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ] +
                          body["weaponStats"]["damageRanges"]
                              .map<Widget>((data) => DamageRange(
                                    rangeStart: data["rangeStartMeters"],
                                    rangeEnd: data["rangeEndMeters"],
                                  ))
                              .toList(),
                    ),
                  ),
                  DamageValueWithRange(
                    bodyPart: "head",
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                    data: body,
                  ),
                  DamageValueWithRange(
                    bodyPart: "body",
                    margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    data: body,
                  ),
                  DamageValueWithRange(
                    bodyPart: "leg",
                    margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                    data: body,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
