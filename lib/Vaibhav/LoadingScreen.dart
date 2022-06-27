import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(const MaterialApp(
    home: _Loading(),
  ));
}
class _Loading extends StatefulWidget {
  const _Loading({Key? key}) : super(key: key);

  @override
  State<_Loading> createState() => _LoadingState();
}

class _LoadingState extends State<_Loading> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Color(0xFFfe4655),
        body:Container(
          constraints: BoxConstraints.expand(),
          padding: EdgeInsets.fromLTRB(0,0,50,0),
        height: 2000,

        width: 2000,
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/loadingbanner/Loading Screen Banner.png"),
        fit: BoxFit.cover,

            ),


        ),
      ),
      ),
    );
  }
}


