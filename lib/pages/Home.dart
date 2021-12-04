import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movreiews/pages/movdata.dart';
import 'package:movreiews/pages/movmultidata.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool issearch=false;

  void qwait(String a)async {

      movmulti inst=movmulti(moviename: a);
      await inst.getdata1();

      movdata inst2 = movdata(moviename: a);
      await inst2.getdata();



      if(inst.esponse=="False")
        {
          Navigator.pushNamed(context, "/movieinfo2", arguments:
              {
                'Title': inst2.title,
                'Poster': inst2.Poster,
                'Runtime': inst2.runtime,
                'Plot': inst2.plot,
                'Actors': inst2.actors,
                'Boxoffice': inst2.boxoffice,
                'Director': inst2.director,
                'Genre': inst2.genre,
                'IMDb': inst2.IMDb,
                'Year': inst2.year,
                'searchtext': a,
              });


            

        }
      else {
        Navigator.pushNamed(context, "/movieinfo", arguments:
        {
          'Listy': inst.results,
          'searchtext':a,
        });
      }


  }
  
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//    data=ModalRoute.of(context).settings.arguments;


    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[

                    Colors.amber[600],
                    Colors.black,
                    Colors.black,
//                    Colors.amberAccent[200],
                  ])
          ),
        ),
        leading: issearch ? Icon(Icons.search):Text(""),
        backgroundColor: Colors.grey[900],
        toolbarHeight: 80,
        title:!issearch ? Text("IMDb",style: GoogleFonts.zillaSlab(fontSize:26,color: Colors.amberAccent[400],fontWeight: FontWeight.bold),
        ):

        TextField(

          onSubmitted: (value){
            qwait(value);


          },
          style: TextStyle(color: Colors.amberAccent),
          decoration: InputDecoration
            (
              hintText: "IMDb search.....",
              hintStyle: TextStyle(color: Colors.grey)

          ),
        ),

        actions: [
          !this.issearch ?
          IconButton(icon: Icon(Icons.search,color: Colors.amberAccent[200],), onPressed: (){
            setState(() {
              this.issearch=!this.issearch;

            });
          }):
          IconButton(icon: Icon(Icons.cancel,color: Colors.amber,), onPressed: (){
            setState(() {
              this.issearch=!this.issearch;

            });
          })

        ],
        centerTitle: true,
        ),
      body: ListView(
        children:[ Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.black,
                    Colors.black,
//                    Colors.black,
                    Colors.amber[500]
                  ])
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/IMDb2.jpg',
                fit: BoxFit.cover,
                height: 640,
                width: double.infinity,

              ),
              SizedBox(height: 20.0,),
              Center(child: Text(" Worlds best movie reviews are here..",style: GoogleFonts.courgette(color: Colors.amberAccent[400],fontSize: 18.0,letterSpacing: 1.5,fontWeight: FontWeight.bold),)),
              SizedBox(height: 20.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Divider(
                    height: 0.0,
                    color: Colors.grey[800],
                  ),
                  SizedBox(height: 30.0,),
                  ExpansionTile(leading:Icon(Icons.add_comment,color: Colors.amberAccent[100],),title:Text("Features", style: GoogleFonts.courgette(color: Colors.grey[200],fontSize: 30.0,fontWeight: FontWeight.bold),),
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(3,10,1,5),
                      child: Text("The movie and talent pages of IMDb are accessible to all internet users, but a registration process is necessary to contribute information to the site.Most data in the database is provided by volunteer contributors. The site enables registered users to submit new material and edits to existing entries. Users with a proven track record of submitting factual data are given instant approval for additions or corrections to cast, credits, and other demographics of media product and personalities. However, image, name, character name, plot summaries, and title changes are supposedly screened before publication, and usually take between 24 and 72 hours to appear.",style: GoogleFonts.raleway(wordSpacing: 0.5,color: Colors.white,fontSize: 20.0,letterSpacing: 2.0),),
                    ),
                  ],),
                  SizedBox(height: 30.0,),
                  Divider(
                    height: 0.0,
                    color: Colors.grey[800],
                  ),
                  SizedBox(height: 30.0,),
                  ExpansionTile(leading:Icon(Icons.add_comment,color: Colors.amberAccent[100],),title:Text("History",style: GoogleFonts.courgette(color: Colors.grey[200],fontSize: 30.0,fontWeight: FontWeight.bold),),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("IMDb originated with a Usenet posting entitled Those Eyes, by the British film fan and computer programmer Col Needham,[7] about actresses with beautiful eyes. Others with similar interests soon responded with additions or different lists of their own. Needham subsequently started an Actors List, while Dave Knight began a Directors List, and Andy Krieg took over THE LIST from Hank Driskill, which would later be renamed the Actress List. Both lists had been restricted to people who were alive and working, but soon retired people were added, so Needham started what was then (but did not remain) a separate Dead Actors/Actresses List. Steve Hammond started collecting and merging character names for both the actors and actresses lists. When these achieved popularity, they were merged back into the lists themselves. The goal of the participants now was to make the lists as inclusive as possible.",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.normal,letterSpacing: 2.0),),
                      ),
                    ],),
                  SizedBox(height: 30.0,),
                  Divider(
                    height: 0.0,
                    color: Colors.grey[800],
                  ),

                  SizedBox(height: 30.0,),

                  ExpansionTile(leading:Icon(Icons.add_comment,color: Colors.amberAccent[100],),title:Text("Rankings",style: GoogleFonts.courgette(color: Colors.grey[200],fontSize: 28.0,fontWeight: FontWeight.bold),),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("* W  = weighted rating",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.normal,letterSpacing: 2.0),),
                        ),
                        SizedBox(height: 10.0,),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("* R  = average for the movie as a number from 1 to 10 (mean) = (Rating)",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.normal,letterSpacing: 2.0),),
                        ),
                        SizedBox(height: 10.0,),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("* V  = number of votes for the movie = (votes)",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.normal,letterSpacing: 2.0),),
                        ),
                        SizedBox(height: 10.0,),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("* M  = minimum votes required to be listed in the Top 250 (currently 25,000",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.normal,letterSpacing: 2.0),),
                        ),
                        SizedBox(height: 10.0,),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("* C  = the mean vote across the whole report (currently 7.0)",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.normal,letterSpacing: 2.0),),
                        ),
                        SizedBox(height: 30.0,),
                        ExpansionTile(leading:Icon(Icons.add_comment,color: Colors.amberAccent[100],),title:Text("Formula of ratings",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold,letterSpacing: 2.0),),children: [Text(" (R*V + C*M)/(V+M)",style: TextStyle(color: Colors.amber,fontSize: 25.0,fontWeight: FontWeight.bold,letterSpacing: 2.0),),],),
                        SizedBox(height: 15.0,),

                      ],),
                  SizedBox(height: 30.0,),
                  Divider(
                    height: 0.0,
                    color: Colors.grey[800],
                  ),

                  SizedBox(height: 30.0,),
                  ExpansionTile(leading:Icon(Icons.add_comment,color: Colors.amberAccent[100],),title:Text("Created by",style: GoogleFonts.courgette(color: Colors.grey[200],fontSize: 30.0,fontWeight: FontWeight.bold),),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Kiran....",style: TextStyle(color: Colors.amberAccent,fontSize: 30.0,fontWeight: FontWeight.bold),),
                    ),
                  ],),
                  SizedBox(height: 30.0,),

                ],
              ),

            ],
          ),
        ),
       ]
      ),


    );



  }
}
