import 'package:http/http.dart';
import 'dart:convert';

class movmulti{

  String moviename;
  String esponse;
  String eror;
  List results;
  movmulti({this.moviename});

  Future<void> getdata1() async{
    Response response = await get(
        "http://www.omdbapi.com/?apikey=691db476&s=$moviename");
    Map data = jsonDecode(response.body);

        eror=data['Error'];
        esponse=data['Response'];
        results = data['Search'];



  }
}




