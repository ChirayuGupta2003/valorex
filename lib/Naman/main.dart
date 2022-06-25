// ignore_for_file: prefer_const_constructors

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
    Quote(text: 'AGENTS'),
    Quote(text: 'GUNS'),
    Quote(text: 'MAPS'),
  ];

  Widget quoteTemplate(quote) {
    return Expanded(
      flex: 1,
      child: Card(
        color: Color(0xFFedf2f7),
        margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
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
                    fontFamily: 'Valorant2',
                    fontSize: 30.0,
                    color: Color(
                      0xFFcf1b1e,
                    ),
                    // 0xFFcf1b1e
                  ),
                ),
              ),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0f1923),
        appBar: AppBar(
          title: Center(
            child: Container(
                margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
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
                height: 150,
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
              // Divider(height:0,thickness: 2,indent:5,endIndent: 5,
              // color: Colors.black,)
            ],
          ),
        ),
      ),
    );
  }
}
