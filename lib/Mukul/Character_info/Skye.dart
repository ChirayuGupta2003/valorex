// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Skye(),
  debugShowCheckedModeBanner: false,
));

class Skye extends StatefulWidget {
  const Skye({Key? key}) : super(key: key);

  @override
  State<Skye> createState() => _characterState();
}

class _characterState extends State<Skye> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0f1923),
        appBar: AppBar(
          title: Column(children: [
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            Text(
              "SKYE",
              style: TextStyle(
                fontFamily: 'Valorant1',
                fontSize: 35,
                color: Colors.white,
              ),
            ),
          ]),
          centerTitle: true,
          backgroundColor: Color(0xFF0f1923),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://scontent.fluh2-1.fna.fbcdn.net/v/t1.6435-9/87142187_213455970056218_2898787493811847168_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_ohc=U30Hpjy751cAX_k7OrJ&_nc_ht=scontent.fluh2-1.fna&oh=00_AT-4wMfV2nnUPdBfC6THcTogxBe3uxMrlWYLXlXuIdhy4Q&oe=62DE0CC7'),
                    fit: BoxFit.cover,
                  )),
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: NetworkImage(
                    "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt302fcb2b9628c376/5f7fa6ff8db9ea0f149ece0a/V_AGENTS_587x900_ALL_Skye.png"),
                fit: BoxFit.scaleDown,
              ),
              height: 375,
            ),
            SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.black54,
              ),
              padding: EdgeInsets.all(7),
              margin: EdgeInsets.all(7),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Padding(padding:EdgeInsets.all(10.0)),
                    Center(
                      child: Text(
                        "Hailing from Australia, Skye and her band of beasts trailblaze the way through hostile territory. With her creations hampering the enemy, and her power to heal others, the team is strongest and safest by Skye's side.",
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Valorant3",
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ]),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.all(5),
                            width: (MediaQuery.of(context).size.width / 3),
                            child: Image(
                              matchTextDirection: true,
                              image: NetworkImage(
                                  "https://media.valorant-api.com/agents/6f2a04ca-43e0-be17-7f36-b3908627744d/abilities/ability1/displayicon.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black54,
                          ),
                          padding: EdgeInsets.all(7),
                          margin: EdgeInsets.all(7),
                          width: (MediaQuery.of(context).size.width) * (2 / 3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Trailblazer'.toUpperCase(),
                                  style: TextStyle(
                                    fontFamily: 'Valorant2',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )),
                              Text(
                                'EQUIP a Tasmanian tiger trinket. FIRE to send out and take control of the predator.  While in control, FIRE to leap forward, exploding in a concussive blast and damaging directly hit enemies.',
                                style: TextStyle(
                                  fontFamily: 'Valorant3',
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.visible,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.all(5),
                            width: (MediaQuery.of(context).size.width / 3),
                            child: Image(
                              image: NetworkImage(
                                  "https://media.valorant-api.com/agents/6f2a04ca-43e0-be17-7f36-b3908627744d/abilities/ability2/displayicon.png"),
                              fit: BoxFit.cover,
                              matchTextDirection: true,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black54,
                          ),
                          padding: EdgeInsets.all(7),
                          margin: EdgeInsets.all(7),
                          width: (MediaQuery.of(context).size.width) * (2 / 3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Guiding Light'.toUpperCase(),
                                  style: TextStyle(
                                    fontFamily: 'Valorant2',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )),
                              Text(
                                'EQUIP a hawk trinket.  FIRE to send it forward.  HOLD FIRE to guide the hawk in the direction of your crosshair. RE-USE while the hawk is in flight to transform it into a flash.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: 'Valorant3',
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.visible,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.all(5),
                            width: (MediaQuery.of(context).size.width / 3),
                            child: Image(
                              image: NetworkImage(
                                  "https://media.valorant-api.com/agents/6f2a04ca-43e0-be17-7f36-b3908627744d/abilities/grenade/displayicon.png"),
                              fit: BoxFit.cover,
                              matchTextDirection: true,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black54,
                          ),
                          padding: EdgeInsets.all(7),
                          margin: EdgeInsets.all(7),
                          width: (MediaQuery.of(context).size.width) * (2 / 3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Regrowth'.toUpperCase(),
                                  style: TextStyle(
                                    fontFamily: 'Valorant2',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )),
                              Text(
                                'EQUIP a healing trinket.  HOLD FIRE to channel, healing allies in range and line of sight.  Can be reused until her healing pool is depleted.  Skye cannot heal herself.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: 'Valorant3',
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.visible,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.all(5),
                            width: (MediaQuery.of(context).size.width / 3),
                            child: Image(
                              image: NetworkImage(
                                  "https://media.valorant-api.com/agents/6f2a04ca-43e0-be17-7f36-b3908627744d/abilities/ultimate/displayicon.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black54,
                          ),
                          padding: EdgeInsets.all(7),
                          margin: EdgeInsets.all(7),
                          width: (MediaQuery.of(context).size.width) * (2 / 3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Seekers'.toUpperCase(),
                                  style: TextStyle(
                                    fontFamily: 'Valorant2',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )),
                              Text(
                                'EQUIP a Seeker trinket.  FIRE to send out three Seekers to track down the three closest enemies.  If a Seeker reaches its target, it nearsights them.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: 'Valorant3',
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.visible,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
