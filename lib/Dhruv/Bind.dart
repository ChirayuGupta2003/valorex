import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Bind(),
  debugShowCheckedModeBanner: false,
));

class Bind extends StatelessWidget {
  const Bind({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0f1923),
      body: SafeArea(
        child: ListView(
          children: [
            Image(image:NetworkImage('https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltc54ad3a88d94a4d6/5eabe92eaf7e315106b4799b/bind1.jpg?auto=webp&width=915'),
              // color:Color(0xFFf2be97) ,
              // colorBlendMode:BlendMode.modulate,
            ),

            Container(
              margin: EdgeInsets.fromLTRB(20,20,20,0),
              child: Text(
                'bind',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color:Color(0xFFfc5b65) ,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Valorant1'),
              ),
            ),
            Container(

              padding: EdgeInsets.fromLTRB(20,0,20,20),
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
              image: NetworkImage('https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltad4274632c983531/5ecd64d04d187c101f3f2486/bind-minimap-2.png?auto=webp&width=515'),
              // color:Color(0xFFf2be97) ,
              // colorBlendMode:BlendMode.modulate,
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
                  'BIND',
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
