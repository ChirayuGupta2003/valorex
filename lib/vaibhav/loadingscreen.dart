import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:valorex/Naman/main.dart';

void Main() => runApp(MaterialApp(

));

class Loading extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => LoadingState();
}

class LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: intScreen(context),

    );
  }

  startTime() async
  {
    var duration = new Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context)=>HomePage()));
  }

  intScreen(BuildContext context) {
    return SafeArea(

      child: Scaffold(

        backgroundColor: Color(0xFFfe4655),
        body: Center(
            child: SpinKitRotatingCircle(
              color: Colors.white,
              size: 50.0,
            )
        ),

      ),
    );
  }
}



