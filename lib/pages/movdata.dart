import 'package:http/http.dart';
import 'dart:convert';

class movdata{

  String moviename;
  String title;
  String Poster;
  String year;
  String genre;
  String runtime;
  String director;
  String actors;
  String plot;
  String boxoffice;
  String IMDb;
  String esponsy;

  movdata({this.moviename});

 Future<void> getdata() async{

      Response response = await get(
          "http://www.omdbapi.com/?apikey=691db476&t=$moviename");
      Map data = jsonDecode(response.body);

      title=data['Title'];
      IMDb=data['Ratings'][0]['Value'];
      Poster=data['Poster'];
      year=data['Year'];
      genre=data['Genre'];
      runtime=data['Runtime'];
      director=data['Director'];
      actors=data['Actors'];
      plot=data['Plot'];
      boxoffice=data['Boxoffice'];
      esponsy=data['Response'];
 }
}




