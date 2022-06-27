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
                      image: NetworkImage('https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt0c118364c6320f60/62a289d3891af05acaff06b1/Pearl_Gallery_01.jpg?auto=webp&width=915')
                  ),
                ),
                child: Align(

                    alignment: Alignment.bottomCenter,
                    child:Text('PEARL',
                      textAlign: TextAlign.center,

                      style:TextStyle(
                          color: Colors.white70,
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
                'Attackers push down into the Defenders on this '
                    'two-site map set in a vibrant,underwater city. '
                    'Pearl is a geo-driven map with no mechanics.'
                    'Take the fight through a compact mid or the'
                    'longer range wings in our first map set in Omega '
                    'Earth',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                  letterSpacing:1,


                ),),
            ),),
          SizedBox(height: 5,),
          Expanded(
            flex: 4,
            child:
            Container(
              height: 700,
              width: 300,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),

                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image:NetworkImage('https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt9011a376cfbacccf/62a28a2334f22956975fa6d1/Pearl_Map_Website_641x641.png?auto=webp&width=515'),
                ),),
            ),)


        ],),

    );
  }
}