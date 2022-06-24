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
      margin : EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,


              style: TextStyle(
                fontFamily:('valorant'),
                fontSize: 25.0,
                color: Colors.black,
              ),
            ),
            SizedBox (height: 10.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 0.0,
                color: Colors.black,
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
        appBar:AppBar(

            title: Center(
              child:Container(
                margin: EdgeInsets.fromLTRB(0,7,0,0),
                child:Text("Valorex",
                    style: TextStyle(
                      fontFamily: ('valorant'),
                      fontSize: 35,
        

                    ),
              ) ),
            ),
            backgroundColor: Colors.blue,
          ),

        body: Column(
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        ),

        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.black ,
             child: Icon(Icons.refresh)
         ),

      ),
    );


  }
}

