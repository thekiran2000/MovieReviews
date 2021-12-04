import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movreiews/pages/movdata.dart';
import 'package:movreiews/pages/movedata3.dart';

class Movieinfo extends StatefulWidget {
  @override
  _MovieinfoState createState() => _MovieinfoState();
}

class _MovieinfoState extends State<Movieinfo> {
  Map data={};
  List kk;
  String search;
  @override

  Widget build(BuildContext context) {
    data=ModalRoute.of(context).settings.arguments;
    kk=data['Listy'];
    search=data['searchtext'];

    void waitfordata(int index)async
    {
      movdata3 inst=movdata3(imdb:kk[index]['imdbID']);
      await inst.getdata3();
      Navigator.pushNamed(context, "/mainmovie",arguments: {
        'Title':inst.title,
        'Poster':inst.Poster,
        'Year':inst.year,
        'Runtime':inst.runtime,
        'Plot':inst.plot,
        'Actors':inst.actors,
        'Director':inst.director,
        'Genre':inst.genre,
        'IMDb':inst.IMDb,

      });
    }

    return Scaffold(
      backgroundColor: Colors.grey[800],

      appBar: AppBar(
        title: Text("IMDb Results for $search..",style: TextStyle(color: Colors.amber,fontSize: 18),),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body:
      Stack(
        children:[
//          Image.network(
//            '${data['Poster']}',
//            fit: BoxFit.cover,
//            height: double.infinity,
//            width: double.infinity,
//
//          ),

          ListView.builder(
            itemCount: kk.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(height: 10.0,),

                  SizedBox(height: 20.0,),
                  Card(

                      elevation: 18.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      child: new InkWell(
                        onTap: ()async{
                          await waitfordata(index);
                        },
                        child: Image.network(
                          '${kk[index]['Poster']}',
                          fit: BoxFit.cover,
                          height: 250.0,
                          width: 150.0,
                        ),

                      )

                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: Text(
                        '${kk[index]['Title']}',
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.amberAccent[200],letterSpacing: 0.4),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    thickness: 2,
                    color: Colors.grey[700],
                  )
                ],
              );
            }

        ),
      ]
      ),
    );
  }
}
