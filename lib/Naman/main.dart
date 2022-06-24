import 'package:flutter/material.dart';
import'quote.dart';
void main() => runApp(MaterialApp(
 title: "Valorex",
  home: HomePage(),
  debugShowCheckedModeBanner: false,
));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Quote> quotes = [
       Quote(author: '' , text: 'AGENTS'),
       Quote(author: '' , text: 'GUNS'),
       Quote(author: '' , text: 'MAPS'),
  ];

  Widget quoteTemplate(quote){
    return Card(
      color: Color(0xFFedf2f7),
      margin : EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Padding(padding: EdgeInsets.all(7)),
            Text(
              quote.text,
              style: TextStyle(
                fontFamily:('Valorant2'),
                fontSize: 25.0,
                color:Color(0xFFcf1b1e,)
                  // 0xFFcf1b1e
              ),
            ),
            SizedBox (height: 10.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 0.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0f1923),
        appBar:AppBar(

            title: Center(
              child:Container(
                margin: EdgeInsets.fromLTRB(0,7,10,0),
                child:Text("ValoRex",
                    style: TextStyle(

                      fontFamily: ('Valorant2'),
                      fontSize: 35,
                      color: Colors.white,
        

                    ),
              ) ),
            ),
            backgroundColor: Color(0xFF0f1923),
          ),

        body:
        Column(
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        ),
        drawer: Drawer(
          
          backgroundColor: Color(0xFF0f1923),
          child:Column(

            children: [
              DrawerHeader(child:Text('ValoRex',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Valorant2',
                ),),
              padding: EdgeInsets.all(20),
              ),


            ],
          ),
        ),


      ),
    );


  }
}

