import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Icebox(),
      debugShowCheckedModeBanner: false,
    ));

class Icebox extends StatelessWidget {
  const Icebox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0f1923),
      body: SafeArea(
        child: ListView(
          children: [
            Image(
              image: NetworkImage(
                  'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt9ef7b41910a14118/5f80debff6c586323f8b17a3/icebox_1.jpg?auto=webp&width=915'),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                'icebox',
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
                'Your next battleground is a secret Kingdom '
                'excavation site overtaken by the arctic. The two '
                'plant sites protected by snow and metal require '
                'some horizontal finesse. Take advantages of the '
                'ziplines and they’ll see you coming.',
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
              image: NetworkImage(
                  'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt99dbdb8199ef057e/626c2e245d936230ca8ea9d6/04-2022-Icebox-Minimap-2.jpg?auto=webp&width=515'),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF0f1923),
        title: Text(
          'ICEBOX',
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
