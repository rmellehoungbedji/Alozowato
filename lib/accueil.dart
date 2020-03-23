import 'package:alonouz_mobile/page_usager/inscriUsager1.dart';
import 'package:flutter/material.dart';

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

  setSelectedRadio(int val) {
    setState(() {
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
        title: Text("ALONOUZOR Rapide"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        decoration: _buildBackground(),
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
                      Text(
                        'Artisan',
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
        ),
      ),
    );
  }
}
