import 'package:alonouz_mobile/pages_artisans/messagerie.dart';
import 'package:flutter/material.dart';

class Localisation extends StatefulWidget {
  String telephone, dateNais;
 Localisation(this.telephone,this.dateNais);
  @override
  _LocalisationState createState() => _LocalisationState();
}

class _LocalisationState extends State<Localisation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                //child: Image.asset("assets/pl.jpg"),
              ),
              
              Padding(
                
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[200],
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 20),
                        blurRadius: 20.0),
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 20),
                        blurRadius: 20.0),  
                    ]),
                  child: Padding(
                    padding: EdgeInsets.only(left:20.0, right: 20.0, top:14.0, bottom: 14.0), 
                    child: Column(
              children: <Widget>[
                Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 0.0, vertical: 70),
                    child: AlertDialog(
                      actions: <Widget>[
                        FlatButton(
                          child: Text("Non"),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LocalisationNON();
                            }));
                          },
                        ),
                        FlatButton(
                          child: Text("Oui"),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LocalisationOUI();
                            }));
                          },
                        )
                      ],
                      content: Text("Vous êtes dans votre atelier?"),
                        ))
                  ],
                 ),
                ),  
                ),
              ),
              new Spacer(),
            ], 
          ),
        ],
      ),
    );
  
  }
  

}

class LocalisationOUI extends StatefulWidget {
  @override
  _LocalisationOUIState createState() => _LocalisationOUIState();
}

class _LocalisationOUIState extends State<LocalisationOUI> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                //child: Image.asset("assets/pl.jpg"),
              ),
              
              Padding(
                
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[200],
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 20),
                        blurRadius: 20.0),
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 20),
                        blurRadius: 20.0),  
                    ]),
                  child: Padding(
                    padding: EdgeInsets.only(left:20.0, right: 20.0, top:14.0, bottom: 14.0), 
                    child: Column(
                      children: <Widget>[
                        Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: 0.0, vertical: 70),
                            child: AlertDialog(
                              actions: <Widget>[
                                FlatButton(
                                  child: Text("ok"),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Messagerie();
                                    }));
                                  },
                                ),
                              ],
                              content: Text("Activer votre localisation ! "),
                            ))
                      ],
                    ),
                ),  
                ),
              ),
              new Spacer(),
            ], 
          ),
        ],
      ),
    );
  
  }
}

class LocalisationNON extends StatefulWidget {
  @override
  _LocalisationNONState createState() => _LocalisationNONState();
}

class _LocalisationNONState extends State<LocalisationNON> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                //child: Image.asset("assets/pl.jpg"),
              ),
              
              Padding(
                
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[200],
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 20),
                        blurRadius: 20.0),
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 20),
                        blurRadius: 20.0),  
                    ]),
                  child: Padding(
                    padding: EdgeInsets.only(left:20.0, right: 20.0, top:14.0, bottom: 14.0), 
                     child: Column(
                  children: <Widget>[
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 0.0, vertical: 70),
                        child: AlertDialog(
                          actions: <Widget>[
                            FlatButton(
                              child: Text("OK "),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )
                          ],
                          content: Text(
                              "Essayez d'être dans votre \n atelier afin de valider \n votre inscription"),
                        ))
                  ],
               ),
                ),  
                ),
              ),
              new Spacer(),
            ], 
          ),
        ],
      ),
    );
  
  }
}