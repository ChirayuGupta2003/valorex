// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class WeaponListCard extends StatelessWidget {
  const WeaponListCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: InkWell(
        onTap: () {},
        child: Card(
          color: Color.fromRGBO(255, 82, 82, 0.8),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                  margin: EdgeInsets.all(10.0),
                  height: 110,
                  child: Image.asset(index.image),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        index.title,
                        style: TextStyle(
                          fontSize: 28,
                          color: Color(0xFF0f1923),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Valorant1',
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        index.description,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'Valorant1',
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
