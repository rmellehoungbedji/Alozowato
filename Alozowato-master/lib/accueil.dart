

//import 'package:alonouz_mobile/page_usager/inscriUsager1.dart';
import 'package:alonouz_mobile/page_usager/inscriUsager1.dart';
import 'package:alonouz_mobile/pages_artisans/inscriArtis.dart';
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
    selectedRadio = -1;
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
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue[200].withOpacity(0.30),
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
                              "assets/artis.jpg",
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
                      fontSize: 20,
                    ),
                  ),
                ],
              ),

             

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
                        'Usager',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Roboto',
                          letterSpacing: 1.5,
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
                        'Artisan',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Roboto',
                          letterSpacing: 1.5,
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
                        if(  selectedRadio == -1){
                          Toast.show("Sélectionner un utilisateur", context, 
                          duration: Toast.LENGTH_LONG,
                          gravity: Toast.BOTTOM
                          );
                        } else if(selectedRadio == 1) {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return InscriUsager1();
                        }));

                        } else if(selectedRadio == 2){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return InscriArtis();
                        }));
                        }
                        
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
 