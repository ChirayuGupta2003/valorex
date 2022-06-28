// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'Character_class.dart';
// import 'Character_info.dart';

void main() => runApp(MaterialApp(
      home: AgentsCard(),
      debugShowCheckedModeBanner: false,
    ));

class AgentsCard extends StatefulWidget {
  const AgentsCard({Key? key}) : super(key: key);

  @override
  State<AgentsCard> createState() => _HomeState();
}

class _HomeState extends State<AgentsCard> {
  List<Character> character_info = [
    Character('BRIMSTONE', 'PHOENIX', 'assests/characters/Brimstone.png',
        'assests/characters/Phoenix.png'),
    Character('SAGE', 'SOVA', 'assests/characters/Sage.png',
        'assests/characters/Sova.png'),
    Character('VIPER', 'CYPHER', 'assests/characters/Viper.png',
        'assests/characters/Cypher.png'),
    Character('REYNA', 'KILLJOY', 'assests/characters/Reyna.png',
        'assests/characters/KillJoy.png'),
    Character('BREACH', 'OMEN', 'assests/characters/Breach.png',
        'assests/characters/Omen.png'),
    Character('JETT', 'RAZE', 'assests/characters/Jett.png',
        'assests/characters/Raze.png'),
    Character('SKYE', 'YORU', 'assests/characters/Skye.png',
        'assests/characters/Yoru.png'),
    Character('ASTRA', 'KAY/O', 'assests/characters/Astra.png',
        'assests/characters/KAYO.png'),
    Character('CHAMBER', 'NEON', 'assests/characters/Chamber.png',
        'assests/characters/Neon.png'),
  ];

  Widget Character_Template(character) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://scontent.fluh2-1.fna.fbcdn.net/v/t1.6435-9/87142187_213455970056218_2898787493811847168_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_ohc=U30Hpjy751cAX_k7OrJ&_nc_ht=scontent.fluh2-1.fna&oh=00_AT-4wMfV2nnUPdBfC6THcTogxBe3uxMrlWYLXlXuIdhy4Q&oe=62DE0CC7'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              height: 225,
              width: 175,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image(
                    image: NetworkImage(character.url),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.fromLTRB(5, 2.5, 2.5, 2.5),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://scontent.fluh2-1.fna.fbcdn.net/v/t1.6435-9/87142187_213455970056218_2898787493811847168_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_ohc=U30Hpjy751cAX_k7OrJ&_nc_ht=scontent.fluh2-1.fna&oh=00_AT-4wMfV2nnUPdBfC6THcTogxBe3uxMrlWYLXlXuIdhy4Q&oe=62DE0CC7'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        height: 225,
                        width: 175,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image(
                              image: AssetImage(character.url),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  character.name,
                                  style: TextStyle(
                                    fontFamily: "Valorant1",
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.fromLTRB(2.5, 2.5, 5, 2.5),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://scontent.fluh2-1.fna.fbcdn.net/v/t1.6435-9/87142187_213455970056218_2898787493811847168_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_ohc=U30Hpjy751cAX_k7OrJ&_nc_ht=scontent.fluh2-1.fna&oh=00_AT-4wMfV2nnUPdBfC6THcTogxBe3uxMrlWYLXlXuIdhy4Q&oe=62DE0CC7'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        height: 225,
                        width: 175,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image(
                              image: AssetImage(character.url1),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  character.name1,
                                  style: TextStyle(
                                    fontFamily: "Valorant1",
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF172535),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 130,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://scontent.fluh2-1.fna.fbcdn.net/v/t1.6435-9/87142187_213455970056218_2898787493811847168_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_ohc=U30Hpjy751cAX_k7OrJ&_nc_ht=scontent.fluh2-1.fna&oh=00_AT-4wMfV2nnUPdBfC6THcTogxBe3uxMrlWYLXlXuIdhy4Q&oe=62DE0CC7'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "AGENTS",
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: "Valorant1",
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children:
                    character_info.map((e) => Character_Template(e)).toList(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 15, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://scontent.fluh2-1.fna.fbcdn.net/v/t1.6435-9/87142187_213455970056218_2898787493811847168_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_ohc=U30Hpjy751cAX_k7OrJ&_nc_ht=scontent.fluh2-1.fna&oh=00_AT-4wMfV2nnUPdBfC6THcTogxBe3uxMrlWYLXlXuIdhy4Q&oe=62DE0CC7'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        height: 225,
                        width: 175,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/characters/Fade.png'),
                              // height: 100,
                              // fit: BoxFit.contain,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "FADE",
                                  style: TextStyle(
                                    fontFamily: "Valorant1",
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
