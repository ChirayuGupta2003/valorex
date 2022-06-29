import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Ascent(),
      debugShowCheckedModeBanner: false,
    ));

class Ascent extends StatelessWidget {
  const Ascent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0f1923),
      body: SafeArea(
        child: ListView(
          children: [
            Image(
              image: NetworkImage(
                  'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt930666d9ab927326/5eabe9c45751b2150e57a42c/ascent1.jpg?auto=webp&width=915'),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                'ASCENT',
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
                'An open playground for small wars of '
                'position and attrition divide two sites on '
                'Ascent. Each site can be fortified by '
                'irreversible bomb doors; once they’re '
                'down, you’ll have to destroy them or find '
                'another way. Yield as little territory as '
                'possible.',
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
                  'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt47bef6aa9e43d8ec/5ecd64df96a8996de38bbf8f/ascent-minimap-2.jpg?auto=webp&width=515'),
            ),
            SizedBox(
              height: 10,
            )
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
              'ASCENT',
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
