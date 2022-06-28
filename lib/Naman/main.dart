// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'quote.dart';


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
    Quote(text: 'AGENTS', image: 'assets/AGENTS.png',route:'/agents'),
    Quote(text: 'GUNS', image: 'assets/GUNS.png',route:'/gunshomescreen'),
    Quote(text: 'MAPS', image: 'assets/MAPS.jpg',route: '/mapshomescreen'),
  ];

  Widget quoteTemplate(quote) {
    return Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:InkWell(
            onTap:()=> Navigator.pushNamed(context,quote.route),
            child: Card(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFedf2f7),
                  image: DecorationImage(
                    image: AssetImage(quote.image),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),

                //color: Color(0xFFedf2f7),
                //margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(7)),
                      Center(
                        child: Text(
                          quote.text,
                          style: TextStyle(
                            shadows: [
                              Shadow(
                                  // bottomLeft
                                  offset: Offset(-1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // bottomRight
                                  offset: Offset(1.5, -1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topRight
                                  offset: Offset(1.5, 1.5),
                                  color: Colors.black),
                              Shadow(
                                  // topLeft
                                  offset: Offset(-1.5, 1.5),
                                  color: Colors.black),
                            ],
                            fontFamily: 'Valorant1',
                            fontSize: 30.0,
                            color: Colors.white,
                            // 0xFFcf1b1e
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0f1923),
        appBar: AppBar(
          title: Center(
            child: Container(
                margin: EdgeInsets.fromLTRB(0, 10, 30, 0),
                child: Text(
                  "ValoRex",
                  style: TextStyle(
                    fontFamily: 'Valorant1',
                    fontSize: 35,
                    color: Colors.white,
                  ),
                )),
          ),
          backgroundColor: Color(0xFF0f1923),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        ),


        drawer: Drawer(
          backgroundColor: Color(0xFF0f1923),
          child: Column(
            children: [
              Container(
                height: 100,
                padding: EdgeInsets.fromLTRB(0, 20, 20, 0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Color(0xFF0f1923),
                  child: ClipRect(
                    child: Image.asset(
                      'assets/logo/ValorexLogo Transparent.png',
                    ),
                  ),
                ),
              ),

              Container(
                height: 50,
                child: const DrawerHeader(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Center(
                    child: Text(
                      'ValoRex',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Valorant1',


                      ),
                    ),
                  ),
                ),
              ),

              Container(
                height: 50,
                child: const DrawerHeader(
                  padding: EdgeInsets.fromLTRB(0, 20, 180, 0),
                  child: Center(
                    child: Text(
                      'DEVELOPERS:',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        fontFamily: 'Valorant2',


                      ),
                    ),
                  ),
                ),
              ),




              Container(
                height: 50,
                child: const DrawerHeader(
                 padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Center(
                    child: Text(
                      'NANDIKA CHHUNEJA (102116015)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Valorant2',


                      ),
                    ),
                  ),
                ),
              ),

              Container(
                height: 50,
                child: const DrawerHeader(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Center(
                    child: Text(
                      'CHIRAYU GUPTA (102116046)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'Valorant2',


                      ),
                    ),
                  ),
                ),
              ),

              Container(
                height: 50,
                child: const DrawerHeader(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Center(
                    child: Text(
                      'DHRUV MARWAHA (102116049)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'Valorant2',


                      ),
                    ),
                  ),
                ),
              ),


              Container(
                height: 50,
                child: const DrawerHeader(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Center(
                    child: Text(
                      'NAMAN BHARGAVA (102116058)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'Valorant2',


                      ),
                    ),
                  ),
                ),
              ),



              Container(
                height: 50,
                child: const DrawerHeader(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Center(
                    child: Text(
                      'SAMRIDHI WADHWA (102116060)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'Valorant2',


                      ),
                    ),
                  ),
                ),
              ),



              Container(
                height: 50,
                child: const DrawerHeader(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Center(
                    child: Text(
                      'MUKUL JINDAL (102116063)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'Valorant2',


                      ),
                    ),
                  ),
                ),
              ),




              Container(
                height: 50,
                child: const DrawerHeader(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Center(
                    child: Text(
                      'VAIBHAV KAPOOR (102116125)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'Valorant2',


                      ),
                    ),
                  ),
                ),
              ),
              // Divider(height:0,thickness: 2,indent:5,endIndent: 5,
              // color: Colors.black,)
            ],
          ),
        ),
      ),
    );
  }
}
