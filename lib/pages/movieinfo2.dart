import 'dart:ui';

import 'package:flutter/material.dart';

class Movieinfo2 extends StatefulWidget {
  @override
  _Movieinfo2State createState() => _Movieinfo2State();
}

class _Movieinfo2State extends State<Movieinfo2> {
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

            BackdropFilter(filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5)
              ,child: Container(
                color: Colors.black.withOpacity(0),
              ),),
            ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(height: 20.0,),
                      Card(

                          elevation: 18.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0))),
                          child: new InkWell(
                            onTap: (){
                               Navigator.pushNamed(context, "/mainmovie",arguments: {
                                'Title':data['Title'],
                                'Poster':data['Poster'],
                                'Year':data['Year'],
                                'Runtime':data['Runtime'],
                                'Plot':data['Plot'],
                                'Actors':data['Actors'],
                                'Director':data['Director'],
                                'Genre':data['Genre'],
                                'IMDb':data['IMDb'],
                              }
                              );
                            },
                            child: Image.network(
                              '${data['Poster']}',
                              fit: BoxFit.cover,
                              height: 250.0,
                              width: 150.0,
                            ),

                          )

                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          '${data['Title']}',
                          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.amberAccent[200]),
                        ),
                      ),
                      SizedBox(height: 20,)
                    ],
                  );
                }

            ),
          ]
      ),
    );
  }
}
