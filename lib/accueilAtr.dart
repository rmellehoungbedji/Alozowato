import 'package:alonouz_mobile/page_usager/inscriUsager1.dart';
import 'package:alonouz_mobile/pages_artisans/inscriptionAtr.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';



class AccueilAtr extends StatefulWidget {
  AccueilAtr() : super();
  @override
  _AccueilAtrState createState() => _AccueilAtrState();
}

var purpleColor = Colors.blueGrey[200];

class _AccueilAtrState extends State<AccueilAtr> {
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
    return Scaffold(
      backgroundColor: purpleColor,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4, 
             child: Container( 
               width: double.infinity,
               decoration: BoxDecoration(
                 borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(110.0)),
                color: Colors.white,
               ),
               child: Padding(
                 padding: const EdgeInsets.all(35.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                      SizedBox(height: 30.0),
                      Container(
                        width: 300.0,
                        child: Text(
                          'Bienvenue sur Alônouzor App',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0
                            ),
                        ),
                      ),

                      SizedBox(height: 20.0),

                      Center(
                        child: Container(
                          width: 150.0,
                          height: 200.0,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey.withOpacity(0.50),
                                    shape: BoxShape.circle),
                              ),
                              Center(
                                child: Container(
                                  width: 150.0,
                                  height: 100.0,
                                  child: ClipOval(
                                    child: Image.asset(
                                      "assets/a1.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
               
                  Row(
                    children: <Widget>[
                       ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          activeColor: Colors.blueGrey,
                          onChanged: (val) {
                            print("Radio $val");
                            setSelectedRadio(val);
                          },
                        ),
                        Text(
                          'Usager',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontFamily: '',
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
                        activeColor: Colors.blueGrey,
                        onChanged: (val) {
                          print("Radio $val");
                          setSelectedRadio(val);
                        },
                      ),
                      Text(
                        'Artisan',
                        style: TextStyle(
                          color: Colors.black,
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
                    ],
                  ),
                 

                  Center(
                   child: Container(
                      width: 130.0,
                      height: 50.0,
                      child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.blueGrey[300],
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
                              return InscriptionAtr();
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
            ),
           Expanded(
            flex: 1, 
             child: Container(),
            ),
        ],
      )
    );
  }
}


 