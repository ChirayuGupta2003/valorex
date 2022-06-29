import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  home:Pearl(),
  debugShowCheckedModeBanner: false,
));

class Pearl extends StatelessWidget {
  const Pearl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0f1923),
      body: SafeArea(
        child: ListView(
          children: [
            Image(
        image: NetworkImage('https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt0c118364c6320f60/62a289d3891af05acaff06b1/Pearl_Gallery_01.jpg?auto=webp&width=915'),
            ),


            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                'pearl',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color(0xFFfc5b65),
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Valorant1'),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Text(
                'Attackers push down into the Defenders '
                    'on this two-site map set in a vibrant, '
                    'underwater city. Pearl is a geo-driven '
                    'map with no mechanics.Take the fight '
                    'through a compact mid or the longer '
                    'range wings in our first map set in '
                    'Omega Earth.',

                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  letterSpacing: 1.5,
                  fontFamily: "Valorant3",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Image(

              image:NetworkImage('https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt9011a376cfbacccf/62a28a2334f22956975fa6d1/Pearl_Map_Website_641x641.png?auto=webp&width=515'),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF0f1923),
        title: Column(children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
            child: Center(
                child: Text(
                  'Map',
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Valorant1',
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}