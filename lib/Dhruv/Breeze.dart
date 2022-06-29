import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Breeze(),
      debugShowCheckedModeBanner: false,
    ));

class Breeze extends StatelessWidget {
  const Breeze({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0f1923),
      body: SafeArea(
        child: ListView(
          children: [
            Image(
              image: NetworkImage('https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltba64f41bce11904b/607f9e3bc661f15b3da77f85/breeze_1.jpg?auto=webp&width=915'),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                'Breeze',
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
                'Take in the sights of historic ruins or seaside '
                    'caves on this tropical paradise. But bring some '
                    'cover. You will need them for the wide open spaces '
                    'and long range arrangements. Watch your flanks '
                    'and this will be a Breeze.',
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
              image:NetworkImage('https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt1aa82531c6b3a04b/607fa05b33cf413db790d632/breeze_1a.jpg?auto=webp&width=515'),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF0f1923),
        title: Text(
          'BREEZE',
          style: TextStyle(
            fontSize: 35,
            fontFamily: 'Valorant1',
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
