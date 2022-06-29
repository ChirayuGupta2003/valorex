import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Heaven(),
      debugShowCheckedModeBanner: false,
    ));

class Heaven extends StatelessWidget {
  const Heaven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0f1923),
      body: SafeArea(
        child: ListView(
          children: [
            Image(
              image: NetworkImage(
                  'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt7df0b99a582cc5aa/5eabe987b8a6356e4ddc0ca4/haven1.jpg?auto=webp&width=915'),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                'haven',
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
                'Beneath a forgotten monastery, a '
                'clamour emerges from rival Agents '
                'clashing to control three sites. There’s '
                'more territory to control, but defenders '
                'can use the extra real estate for '
                'aggressive pushes.',
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
                  'https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltedb5d57941e4f3f5/5ecd64c14d187c101f3f2484/haven-minimap-2.png?auto=webp&width=515'),
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
          'HEAVEN',
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
