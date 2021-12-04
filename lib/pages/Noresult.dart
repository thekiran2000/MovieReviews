import 'dart:ui';
import 'package:flutter/material.dart';

class Noresult extends StatefulWidget {
  @override
  _NoresultState createState() => _NoresultState();
}

class _NoresultState extends State<Noresult> {
  Map data={};
  @override
  Widget build(BuildContext context) {
    data=ModalRoute.of(context).settings.arguments;
    return Scaffold(
        backgroundColor: Colors.grey[800],

        appBar: AppBar(
          title: Text("IMDb Results for ${data['searchtext']}..",style: TextStyle(color: Colors.amber,fontSize: 18),),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
        ),
        body:Center(child: Text('No results found for ${data['searchtext']}',style: TextStyle(color: Colors.amber,fontSize: 18),))
    );
  }
}
