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
                    image: NetworkImage('https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt7df0b99a582cc5aa/5eabe987b8a6356e4ddc0ca4/haven1.jpg?auto=webp&width=915'),
                  ),
                ),
                child: Align(

                    alignment: Alignment.bottomCenter,
                    child:Text('HEAVEN',
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
                'Beneath a forgotten monastery, a '
                    'clamour emerges from rival Agents '
                    'clashing to control three sites. There’s '
                    'more territory to control, but defenders '
                    'can use the extra real estate for '
                    'aggressive pushes.',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
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
                  image:NetworkImage('https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltedb5d57941e4f3f5/5ecd64c14d187c101f3f2484/haven-minimap-2.png?auto=webp&width=515'
                ),
                ),
              ),
              ),)


        ],),

    );
  }
}