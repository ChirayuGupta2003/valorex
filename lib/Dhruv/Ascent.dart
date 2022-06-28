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
                    image: NetworkImage('https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt930666d9ab927326/5eabe9c45751b2150e57a42c/ascent1.jpg?auto=webp&width=915'),
                  ),
                ),
                child: Align(

                    alignment: Alignment.bottomCenter,
                    child:Text('ASCENT',
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
                'An open playground for small wars of '
                    'position and attrition divide two sites on '
                    'Ascent. Each site can be fortified by '
                    'irreversible bomb doors; once they’re '
                    'down, you’ll have to destroy them or find '
                    'another way. Yield as little territory as '
                    'possible.',
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
                  image:NetworkImage('https://images.contentstack.io/v3/assets/bltb6530b271fddd0b1/blt47bef6aa9e43d8ec/5ecd64df96a8996de38bbf8f/ascent-minimap-2.jpg?auto=webp&width=515'),
                ),
              ),
            ),)


        ],),

    );
  }
}