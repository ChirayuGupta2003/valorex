import 'package:flutter/material.dart';

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
    "lib/Nandika/assests/1.png",
    "lib/Nandika/assests/2.png",
    "lib/Nandika/assests/3.png",
    "lib/Nandika/assests/4.png",
    "lib/Nandika/assests/5.png",
    "lib/Nandika/assests/6.png",
    "lib/Nandika/assests/7.png",
    "lib/Nandika/assests/8.png",
    "lib/Nandika/assests/9.png",
    "lib/Nandika/assests/10.png",
    "lib/Nandika/assests/11.png",
    "lib/Nandika/assests/12.png",
    "lib/Nandika/assests/13.png",
    "lib/Nandika/assests/14.png",
    "lib/Nandika/assests/15.png",
    "lib/Nandika/assests/16.png",
    "lib/Nandika/assests/17.png",
    "lib/Nandika/assests/18.png",
    ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GUNS",
        style: TextStyle (color: Colors.white70),
      ),
        elevation: 0,
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: imgList.length,
          itemBuilder:(context,index){
         return GestureDetector(
           onTap:(){

           },
           child: Card(
             child: Row(
               children: <Widget>[
                 Container(
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
                             fontSize: 15,
                             color: Colors.grey[500],
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
      )
    );
  }
}