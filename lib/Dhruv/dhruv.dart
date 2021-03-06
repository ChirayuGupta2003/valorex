// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Maps(),
    ),
  );
}

class Maps extends StatelessWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0f1923),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Container(
              height: 500,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt0c118364c6320f60/62a289d3891af05acaff06b1/Pearl_Gallery_01.jpg?auto=webp&width=915'))),
              child: Text(
                'PEARL',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Valorant2'),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 4,
            child: Text(
              'Attackers push down into the Defenders on this '
              'two-site map set in a vibrant,underwater city.Pearl is a geo-driven map with no mechanics.'
              'Take the fight through a compact mid or the'
              'longer range wings in our first map set in Omega '
              'Earth',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 17,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 6,
            child: Container(
              height: 700,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt9011a376cfbacccf/62a28a2334f22956975fa6d1/Pearl_Map_Website_641x641.png?auto=webp&width=515'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
