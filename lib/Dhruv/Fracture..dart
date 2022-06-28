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
                      image: NetworkImage('https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt1a720126e3713bba/6131bf518e16ab655b34901a/Fracture_Screenshot-8.jpg?auto=webp&width=915'
                      ),
                ),
                ),
                child: Align(

                    alignment: Alignment.bottomCenter,
                    child:Text('FRACTURE',
                      textAlign: TextAlign.center,

                      style:TextStyle(
                          color: Colors.white,
                          fontSize: 40,
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
                'A top secret research facility split apart by a failed '
                    'radianite experiment. With defender options as '
                    'divided as the map, the choice is yours: meet the '
                    'attackers on their own tuff or batten down the '
                    'hatches to weather the assault.',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
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
                  image:NetworkImage('https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt6145fdc7dffa2f5f/6131c5e985514a6ee3fac889/Fracture_Map_Website_Asset.jpg?auto=webp&width=515'
                  ),
                ),
              ),
            ),)


        ],),

    );
  }
}