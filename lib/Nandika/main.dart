import 'package:flutter/material.dart';

<<<<<<< Updated upstream
void main() => runApp(MaterialApp(
home: QuoteList(),


));
class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> quotes = [
    'Gun 1',
    'Gun 2',
    'Gun 3',
  ];
=======
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewHomePage(),
    );
  }
}
class ListViewHomePage extends StatefulWidget {
  const ListViewHomePage({Key? key}) : super(key: key);

  @override
  State<ListViewHomePage> createState() => _ListViewHomePageState();
}

class _ListViewHomePageState extends State<ListViewHomePage> {

  var titleList = [
    "CLASSIC",
    "SHORTY",
    "FRENZY",
    "GHOST",
    "SHERIFF",
    "STINGER",
    "SPECTRE",
    "BUCKY",
    "JUDGE",
    "BULLDOG",
    "GUARDIAN",
    "PHANTOM",
    "VANDAL",
    "MARSHAL",
    "OPERATOR",
    "ARES",
    "ODIN",
    "TACTICAL KNIFE",
  ];

  var descList = [
    "sidearms",
    "sidearms",
    "sidearms",
    "sidearms",
    "sidearms",
    "smgs",
    "smgs",
    "shotguns",
    "shotguns",
    "rifles",
    "rifles",
    "rifles",
    "rifles",
    "snipers",
    "snipers",
    "heavies",
    "heavies",
    "melee",
  ];
  var imgList = [
    "assets/guns/1.png",
    "assets/guns/2.png",
    "assets/guns/3.png",
    "assets/guns/4.webp",
    "assets/guns/5.webp",
    "assets/guns/6.webp",
    "assets/guns/7.webp",
    "assets/guns/8.png",
    "assets/guns/9.png",
    "assets/guns/10.webp",
    "assets/guns/11.png",
    "assets/guns/12.png",
    "assets/guns/13.webp",
    "assets/guns/14.png",
    "assets/guns/15.png",
    "assets/guns/16.png",
    "assets/guns/17.png",
    "assets/guns/18.png",
>>>>>>> Stashed changes

  ];
  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('GUNS'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,

      ),
      body: Column(
        children: quotes.map((quote) => Text(quote)).toList(),
      )
=======
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      backgroundColor: Color(0xFF0f1923),
      appBar: AppBar(
        title: Text(
          "GUNS",
          style: TextStyle (
            color: Colors.white,
            fontFamily:'Valorant1',

          ),

        ),
      ),


      body: ListView.builder(
          itemCount: imgList.length,
          itemBuilder:(context,index){
            return GestureDetector(
              onTap:(){

              },
              child: Card(
                  child: Row(

                    children:[Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(imgList[index]),
                    ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              titleList[index],
                              style: TextStyle(
                                fontFamily:'Valorant1',
                                fontSize: 25,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: width,
                              child: Text(
                                descList[index],
                                style: TextStyle(
                                  fontFamily:'Valorant1',
                                  fontSize: 15,
                                  color: Colors.black87,
                                ),
                              ),
                            )

                          ],
                        ),
                      )
                    ],

                  )
              ),
            );
          }
      ),
>>>>>>> Stashed changes
    );

  }
}