<<<<<<< HEAD


//import 'package:alonouz_mobile/page_usager/inscriUsager1.dart';
import 'package:alonouz_mobile/pages_artisans/inscriArtis.dart';
=======
import 'package:alonouz_mobile/page_usager/inscriUsager1.dart';
>>>>>>> 458105a83afdbce6bad57cdfbaaabd57aef0c5ae
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Accueil extends StatefulWidget {
  Accueil() : super();
  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

<<<<<<< HEAD
@override
  void initState(){
     super.initState();
     selectedRadio = -1;
   }
   setSelectedRadio(int val){
    setState((){
=======
  setSelectedRadio(int val) {
    setState(() {
>>>>>>> 458105a83afdbce6bad57cdfbaaabd57aef0c5ae
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    BoxDecoration _buildBackground() {
      return BoxDecoration(
        image: DecorationImage(
          image: AssetImage(""),
          fit: BoxFit.cover,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("ALONOUZOR"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        decoration: _buildBackground(),
<<<<<<< HEAD

          child :
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.30),
            ),
            child: 
            Column(
              children: <Widget>[
                SizedBox(height:30.0),
                Center(
                  child: Container(
                    width: 250.0,
                    height: 250.0,
                     child: Stack(
                         children: <Widget>[
                            Container(
                               decoration: BoxDecoration(
                                color: Colors.blue[300].withOpacity(0.50),
                                shape: BoxShape.circle
                              ),
                            ),
                            Center(
                             child: Container(
                                width: 250.0,
                               height: 250.0,
                               child: ClipOval(
                                  child: Image.asset("assets/artis.jpg",
                                  fit: BoxFit.cover,
                                  ),
                               ),
                              ),
                            )
                         ],
                     ),

                    ),
                  ),
                 // SizedBox(height:30.0),
                   Column(
                      children: <Widget>[
                        Text("Alônouzor",
                        style: TextStyle(
                        color: Colors.blue,
                        fontFamily : 'Roboto' ,
                        letterSpacing : 1.2,
                        fontSize: 18,
                         ),
                        ),
                      ],
                   ),

=======
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(0.30),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              Center(
                child: Container(
                  width: 250.0,
                  height: 250.0,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.50),
                            shape: BoxShape.circle),
                      ),
                      Center(
                        child: Container(
                          width: 200.0,
                          height: 200.0,
                          child: ClipOval(
                            child: Image.asset(
                              "assets/mat.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // SizedBox(height:30.0),
              Column(
                children: <Widget>[
                  Text(
                    "Alônouzor",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      letterSpacing: 1.5,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),

              /*Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 70),
                  child: Text(
                    'BESOIN D\'UN ARTISAN ?',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                    color: Colors.white,
                    fontFamily : 'Roboto' ,
                     letterSpacing : 1.5,
                    fontSize: 25,
                     ),
                  )
                ),*/

              /* Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0,vertical:0.0),
                  child: Text(
                    '                     ALONOUZOR, '
                    '\n        Vous permet d\'alerter tous les\nartisans les plus proches de chez vous !',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                 ),
                ),*/

>>>>>>> 458105a83afdbce6bad57cdfbaaabd57aef0c5ae
              ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Radio(
                        value: 1,
                        groupValue: selectedRadio,
                        activeColor: Colors.blue,
                        onChanged: (val) {
                          print("Radio $val");
                          setSelectedRadio(val);
                        },
                      ),
<<<<<<< HEAD
                       Text ( 'Artisan' , 
                        style : TextStyle ( 
                          color : Colors.blue , 
                          fontWeight : FontWeight.w700 , 
                          fontFamily : 'Roboto' , 
                          letterSpacing : 2.2 , 
                          fontSize : 18 , 
                          ), 
=======
                      Text(
                        'Artisan',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Roboto',
                          letterSpacing: 2.5,
                          fontSize: 20,
                        ),
>>>>>>> 458105a83afdbce6bad57cdfbaaabd57aef0c5ae
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio(
                        value: 2,
                        groupValue: selectedRadio,
                        activeColor: Colors.blue,
                        onChanged: (val) {
                          print("Radio $val");
                          setSelectedRadio(val);
                        },
                      ),
<<<<<<< HEAD
                       Text ( 'Usager' , 
                        style : TextStyle ( 
                          color : Colors.blue , 
                          fontWeight : FontWeight.w700 , 
                          fontFamily : 'Roboto' , 
                          letterSpacing : 2.2 , 
                          fontSize : 18 , 
                          ), 
                      ),
                    ],
                  ),
              ],
            ),

           //new  Spacer(),
              SizedBox(height:20.0),

             Center(
               child: Container(
               width: 150.0,
               height: 50.0,
               child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text("COMMENCER"),
                  onPressed: () {
                    if(selectedRadio == -1){
                        Toast.show("Sélectionner un utilisateur", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                    }else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return InscriArtis();
                    }));
                   
                    }
                     
                  },

                  shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)
                  )
                  ),
               ), 
             )  ,  
             new  Spacer(),         
          ],
        ),
=======
                      Text(
                        'Usager',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Roboto',
                          letterSpacing: 2.5,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              //new  Spacer(),
              SizedBox(height: 30.0),

              Center(
                child: Container(
                  width: 130.0,
                  height: 50.0,
                  child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text("COMMENCER"),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return InscriUsager1();
                        }));
                      },
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0))),
                ),
              ),
              new Spacer(),
            ],
          ),
>>>>>>> 458105a83afdbce6bad57cdfbaaabd57aef0c5ae
        ),
      ),
    );
  }
}
