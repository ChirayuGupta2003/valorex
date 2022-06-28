// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Viper(),
  debugShowCheckedModeBanner: false,
));

class Viper extends StatefulWidget {
  const Viper({Key? key}) : super(key: key);

  @override
  State<Viper> createState() => _characterState();
}

class _characterState extends State<Viper> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0f1923),
        appBar: AppBar(
          title: Column(children: [
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            Text(
              "VIPER",
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
                    "https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltc825c6589eda7717/5eb7cdc6ee88132a6f6cfc25/V_AGENTS_587x900_Viper.png"),
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
                        "The American Chemist, Viper deploys an array of poisonous chemical devices to control the battlefield and cripple the enemy's vision. If the toxins don't kill her prey, her mindgames surely will.",
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
                                  "https://media.valorant-api.com/agents/707eab51-4836-f488-046a-cda6bf494859/abilities/ability1/displayicon.png"),
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
                              Text('POISON CLOUD',
                                  style: TextStyle(
                                    fontFamily: 'Valorant2',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )),
                              Text(
                                'EQUIP a gas emitter. FIRE to throw the emitter that perpetually remains throughout the round. RE-USE the ability to create a toxic gas cloud at the cost of fuel. This ability can be RE-USED more than once and can be picked up to be REDEPLOYED.',
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
                                  "https://media.valorant-api.com/agents/707eab51-4836-f488-046a-cda6bf494859/abilities/ability2/displayicon.png"),
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
                              Text('TOXIC SCREEN',
                                  style: TextStyle(
                                    fontFamily: 'Valorant2',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )),
                              Text(
                                'EQUIP a gas emitter launcher that penetrates terrain. FIRE to deploy a long line of gas emitters. RE-USE the ability to create a tall wall of toxic gas at the cost of fuel. This ability can be RE-USED more than once.',
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
                                  "https://media.valorant-api.com/agents/707eab51-4836-f488-046a-cda6bf494859/abilities/grenade/displayicon.png"),
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
                              Text('SNAKE BITE',
                                  style: TextStyle(
                                    fontFamily: 'Valorant2',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )),
                              Text(
                                'EQUIP a chemical launcher. FIRE to launch a canister that shatters upon hitting the floor, creating a lingering chemical zone that damages and applies Vulnerable.',
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
                                  "https://media.valorant-api.com/agents/707eab51-4836-f488-046a-cda6bf494859/abilities/ultimate/displayicon.png"),
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
                              Text('VIPER\'S PIT',
                                  style: TextStyle(
                                    fontFamily: 'Valorant2',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )),
                              Text(
                                'EQUIP a chemical sprayer. FIRE to spray a chemical cloud in all directions around Viper, creating a large cloud that reduces the vision range of players and maximum health of enemies inside of it. HOLD the ability key to disperse the cloud early.',
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
