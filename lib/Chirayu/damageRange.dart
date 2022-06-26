// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DamageRange extends StatelessWidget {
  const DamageRange({
    Key? key,
    required this.rangeStart,
    required this.rangeEnd,
  }) : super(key: key);

  final rangeStart, rangeEnd;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
        child: Text(
          "$rangeStart-${rangeEnd}m",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 15,
            fontFamily: "Valorant2",
          ),
        ),
      ),
    );
  }
}
