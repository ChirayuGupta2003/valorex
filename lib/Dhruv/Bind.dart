import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  home:Test(),
  debugShowCheckedModeBanner: false,
));

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF0f1923),

      body:Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [

          Expanded(
            flex: 3,
            child:
            SafeArea(
              child:Stack( children: [Container(
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage('https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltc54ad3a88d94a4d6/5eabe92eaf7e315106b4799b/bind1.jpg?auto=webp&width=915'),
                  ),
                ),
                child: Align(

                    alignment: Alignment.bottomCenter,
                    child:Text('BIND',
                      textAlign: TextAlign.center,

                      style:TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight:FontWeight.bold,
                          fontFamily: 'Valorant1'

                      ),)
                ),
              ),

              ],

              ),
            ),),

          SizedBox(height:10,),
          Expanded(
            flex:2,
            child:
            Container(
              child:Text(
                'Two sites. No middle. Gotta pick left '
                    'or right. What’s it going to be then? Both '
                    'offer direct paths for attackers and a pair '
                    'of one-way teleporters make it easier to '
                    'flank.',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                  letterSpacing:1,


                ),),
            ),),
          SizedBox(height: 5,),
          Expanded(
            flex: 5,
            child:
            Container(
              height: 700,
              width: 300,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),

                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image:NetworkImage('https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltad4274632c983531/5ecd64d04d187c101f3f2486/bind-minimap-2.png?auto=webp&width=515'),
                ),
              ),
            ),)


        ],),

    );
  }
}