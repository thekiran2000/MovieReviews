import 'package:flutter/material.dart';
import 'package:movreiews/pages/Noresult.dart';
import 'package:movreiews/pages/mainmovie.dart';
import 'package:movreiews/pages/Home.dart';
import 'package:movreiews/pages/Loading.dart';
import 'package:movreiews/pages/movieinfo.dart';
import 'package:movreiews/pages/movieinfo2.dart';
import 'package:movreiews/pages/poster.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      "/": (context)=>Loading(),
      "/home":(context)=>Home(),
      "/mainmovie":(context)=>Mainmovie(),
      "/movieinfo":(context)=>Movieinfo(),
      "/movieinfo2":(context)=>Movieinfo2(),
      "/photoo":(context)=>Photoo(),
      "/noresult":(context)=>Noresult(),
    },
  ));
}
