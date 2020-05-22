import 'package:alonouz_mobile/pages_artisans/localisation.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';


class Inscription1 extends StatefulWidget {
 Inscription1 () : super();
  @override
  _Inscription1State createState() => _Inscription1State();
}

class _Inscription1State extends State<Inscription1> {
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

  DateTime _dateTime;

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
                padding: EdgeInsets.only(top: 18.0),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[ 
                        Text('Votre numéro',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: "Poppins-Medium",
                          ),
                        ),
                        TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              labelText: 'Entrer votre numéro',
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(20)),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                              prefixIcon: Icon(Icons.phone, color: Colors.white)),
                        ),
                        SizedBox(height: 30.0),  
                        Text('Date de naissance',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: "Poppins-Medium",
                          ), 
                        ),
                        TextField(
                          keyboardType: TextInputType.datetime,
                          
                          decoration: InputDecoration(
                                labelText: _dateTime == null? 'Date de naissance' : _dateTime.toString(),
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20)),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)), 
                                prefixIcon: Icon(
                                  Icons.calendar_today, 
                                  color: Colors.white
                                  ),
                                ),
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'Sexe',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                              letterSpacing: 1.5,
                              fontSize: 20,
                            ),
                          ),
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
                                    'Masculin',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: 'Roboto',
                                      letterSpacing: 2.5,
                                      fontSize: 15.0,
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
                                    'Féminin',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: 'Roboto',
                                      letterSpacing: 2.5,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                   ]
                    )
                  ),  
                ),
              ),
              SizedBox(height: 30.0),
              Center(
                   child: Container(
                      width: 130.0,
                      height: 50.0,
                      child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.blueGrey[300],
                          child: Text("SUIVANT"),
                          onPressed: () {
                            if(  selectedRadio == -1){
                              Toast.show("Sélectionner un utilisateur", context, 
                              duration: Toast.LENGTH_LONG,
                              gravity: Toast.BOTTOM
                              );
                            } else if(selectedRadio == 1) {
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Localisation();
                            }));

                            } else if(selectedRadio == 2){
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Localisation();
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
        ],
      ),
    );
 
  }

}

