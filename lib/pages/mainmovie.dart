import 'package:flutter/material.dart';

class Mainmovie extends StatefulWidget {
  @override
  _MainmovieState createState() => _MainmovieState();
}

class _MainmovieState extends State<Mainmovie> {
  Map data={};
  @override
  Widget build(BuildContext context) {
    data=ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('${data['Title']}',style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 25.0),),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
      ),

      body:

      ListView(
        children:[
          Column(
          children: [
            SizedBox(height: 40.0,),

            InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/photoo',arguments:
                {
                  'poster':data['Poster'],
                });
              },
              child: Image.network(
                '${data['Poster']}',
                fit: BoxFit.cover,
                height: 250.0,
                width: 160.0,
              ),
            ),


            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Text('${data['Title']}',style: TextStyle(color: Colors.amberAccent,fontSize: 20.0),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(7.0,4.0,4.0,20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.0,),
                  Divider(
                    height: 0.0,
                    color: Colors.grey[800],
                  ),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("IMDb Ratings:",style: TextStyle(color: Colors.grey[300],fontSize: 35.0),),
                  ),
                  SizedBox(height: 2.0,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('${data['IMDb']}',style: TextStyle(color: Colors.amberAccent,fontSize: 25.0),),
                  ),
                  SizedBox(height: 20.0,),
                  Divider(
                    height: 0.0,
                    color: Colors.grey[800],
                  ),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Year:",style: TextStyle(color: Colors.grey[300],fontSize: 40.0),),
                  ),
                  SizedBox(height: 2.0,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('${data['Year']}',style: TextStyle(color: Colors.amberAccent,fontSize: 25.0),),
                  ),
                  SizedBox(height: 20.0,),
                  Divider(
                    height: 0.0,
                    color: Colors.grey[800],
                  ),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Genre:",style: TextStyle(color: Colors.grey[300],fontSize: 40.0),),
                  ),
                  SizedBox(height: 2.0,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('${data['Genre']}',style: TextStyle(color: Colors.amberAccent,fontSize: 25.0),),
                  ),
                  SizedBox(height: 20.0,),
                  Divider(
                    height: 0.0,
                    color: Colors.grey[800],
                  ),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Runtime:",style: TextStyle(color: Colors.grey[300],fontSize: 40.0),),
                  ),
                  SizedBox(height: 2.0,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('${data['Runtime']}',style: TextStyle(color: Colors.amberAccent,fontSize: 25.0),),
                  ),
                  SizedBox(height: 20.0,),
                  Divider(
                    height: 0.0,
                    color: Colors.grey[800],
                  ),
                  SizedBox(height: 25.0,),



                  ExpansionTile(leading:Icon(Icons.add_comment,color: Colors.amberAccent[100],),title: Text("Cast",style: TextStyle(color: Colors.grey[300],fontSize: 40.0),),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('${data['Actors']}',style: TextStyle(color: Colors.amberAccent,fontSize: 25.0),),
                      ),

                    ],),

                  SizedBox(height: 25.0,),

                  Divider(
                    height: 0.0,
                    color: Colors.grey[800],
                  ),

                  SizedBox(height: 25.0,),

                  ExpansionTile(leading:Icon(Icons.add_comment,color: Colors.amberAccent[100],),title:  Text("Director",style: TextStyle(color: Colors.grey[300],fontSize: 40.0),),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('${data['Director']}',style: TextStyle(color: Colors.amberAccent,fontSize: 25.0),),
                      ),

                    ],),

                  SizedBox(height: 25.0,),

                  Divider(
                    height: 0.0,
                    color: Colors.grey[800],
                  ),

                  SizedBox(height: 25.0,),

                  ExpansionTile(leading:Icon(Icons.add_comment,color: Colors.amberAccent[100],),title:Text("Plot",style: TextStyle(color: Colors.grey[300],fontSize: 40.0),),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('${data['Plot']}',style: TextStyle(color: Colors.amberAccent,fontSize: 23.0),),
                      ),

                    ],),

                  SizedBox(height: 25.0,),

                  Divider(
                    height: 0.0,
                    color: Colors.grey[800],
                  ),

                  SizedBox(height: 25.0,),
                  SizedBox(height: 40.0,),

                ],

              ),
            ),
          ],
        ),
        ]
      ),
    );
  }
}
