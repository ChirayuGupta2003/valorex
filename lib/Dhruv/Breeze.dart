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
                    image: NetworkImage('https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/bltba64f41bce11904b/607f9e3bc661f15b3da77f85/breeze_1.jpg?auto=webp&width=915'),
                  ),
                ),
                child: Align(

                    alignment: Alignment.bottomCenter,
                    child:Text('BREEZE',
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
                'Take in the sights of historic ruins or seaside '
                    'caves on this tropical paradise. But bring some '
                    'cover. You will need them for the wide open spaces '
                    'and long range arrangements. Watch your flanks '
                    'and this will be a Breeze.',
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
                  image:NetworkImage('https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt1aa82531c6b3a04b/607fa05b33cf413db790d632/breeze_1a.jpg?auto=webp&width=515'),
                ),
              ),
            ),)


        ],),

    );
  }
}