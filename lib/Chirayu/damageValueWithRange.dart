
import 'package:flutter/material.dart';

class DamageValueWithRange extends StatelessWidget {
  const DamageValueWithRange({
    Key? key,
    required this.margin,
    required this.bodyPart,
    required this.data,
  }) : super(key: key);

  final EdgeInsetsGeometry margin;
  final String bodyPart;
  final data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white30),
      margin: margin,
      child: Row(
        children: <Widget>[
          Expanded(
              child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    bodyPart.toUpperCase(),
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Valorant2",
                        fontSize: 20),
                  ))),
        ] +
            data["weaponStats"]["damageRanges"]
                .map<Widget>(
                  (index) => Expanded(
                  child: Text(
                    index["${bodyPart}Damage"].round().toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Valorant2",
                        fontSize: 20),
                  )),
            )
                .toList(),
      ),
    );
  }
}