import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Split(),
      debugShowCheckedModeBanner: false,
    ));

class Split extends StatelessWidget {
  const Split({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0f1923),
      body: SafeArea(
        child: ListView(
          children: [
            Image(
              image: NetworkImage(
                  'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt643d33e2defb855c/5eabe9fe248a28605479c547/split1.jpg?auto=webp&width=915'),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                'split',
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
                'If you want to go far, you’ll have to go up. '
                'A pair of sites split by an elevated center '
                'allows for rapid movement using two '
                'rope ascenders. Each site is built with a '
                'looming tower vital for control. '
                'Remember to watch above before it all '
                'blows sky-high.',
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
                  'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt2caea7a88362d6aa/5ecd64b0817e574fa1dcc162/split-minimap-2.png?auto=webp&width=515'),
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
          'SPLIT',
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
