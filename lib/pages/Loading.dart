import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:movreiews/pages/movdata.dart';




class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}



class _LoadingState extends State<Loading> {

  void setup() async{
    movdata inst = movdata(moviename: "avengers");
    await inst.getdata();
    Navigator.pushReplacementNamed(context, "/home");

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setup();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],

      body:Stack(

        children: [

          Center(
            child: Image.asset(
              'assets/gg.gif',
              fit: BoxFit.cover,
              height: 160,
              width: 160,

            ),
          ),

        ],
      )
    );
  }
}
