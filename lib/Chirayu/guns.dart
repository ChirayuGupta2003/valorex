// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'statsCard.dart';

void main() => runApp(MaterialApp(
      home: GunsScreen(),
    ));

class GunsScreen extends StatefulWidget {
  const GunsScreen({Key? key}) : super(key: key);

  @override
  State<GunsScreen> createState() => _GunsScreenState();
}

class _GunsScreenState extends State<GunsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF172535),
        body: Column(
          children: [
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://scontent.fluh2-1.fna.fbcdn.net/v/t1.6435-9/87142187_213455970056218_2898787493811847168_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_ohc=U30Hpjy751cAX_k7OrJ&_nc_ht=scontent.fluh2-1.fna&oh=00_AT-4wMfV2nnUPdBfC6THcTogxBe3uxMrlWYLXlXuIdhy4Q&oe=62DE0CC7"),
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
                  Image.network(
                    "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt04ac3b5158b8466a/5eb281caa44a154c3ef84a82/phantom.png",
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Phantom",
                        style: TextStyle(
                          fontFamily: "Valorant1",
                          fontSize: 30,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  )
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
                                "AUTO",
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
                                "MEDIUM",
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
                            value: "0.6",
                            units: "rds/sec",
                            margin: EdgeInsets.fromLTRB(0, 8, 4, 4),
                          ),
                          StatsCard(
                            heading: "run speed",
                            value: "5.13",
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
                            value: "1.5",
                            units: "sec",
                            margin: EdgeInsets.fromLTRB(0, 4, 4, 4),
                          ),
                          StatsCard(
                            heading: "1st shot spread",
                            value: "5 / 0",
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
                            value: "3.7",
                            units: "sec",
                            margin: EdgeInsets.fromLTRB(0, 4, 4, 8),
                          ),
                          StatsCard(
                            heading: "magazine",
                            value: "3.7",
                            units: "sec",
                            margin: EdgeInsets.fromLTRB(4, 4, 0, 8),
                          ),
                        ],
                      ),
                    ],
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
