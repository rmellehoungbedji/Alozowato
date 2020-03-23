import 'package:alonouz_mobile/page_usager/googleMaps.dart';
import 'package:flutter/material.dart';

class InscriUsager2 extends StatefulWidget {
  InscriUsager2() : super();
  @override
  _InscriUsager2State createState() => _InscriUsager2State();
}

class _InscriUsager2State extends State<InscriUsager2> {
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
          image: AssetImage("assets/plomb1.jpg"),
          fit: BoxFit.cover,
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("ALONOUZOR Rapide"),
        ),
        body: Container(
            decoration: _buildBackground(),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.85),
              ),
              padding: EdgeInsets.only(
                  top: 0.0, left: 20.0, right: 20.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 40.0,
                  ),
                  buildTextFieldTelephone("Téléphone"),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Sexe',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Roboto',
                      letterSpacing: 2.5,
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
                            activeColor: Colors.blue,
                            onChanged: (val) {
                              print("Radio $val");
                              setSelectedRadio(val);
                            },
                          ),
                          Text(
                            'Masculin',
                            style: TextStyle(
                              color: Colors.white,
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
                            activeColor: Colors.blue,
                            onChanged: (val) {
                              print("Radio $val");
                              setSelectedRadio(val);
                            },
                          ),
                          Text(
                            'Féminin',
                            style: TextStyle(
                              color: Colors.white,
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
                  // SizedBox(height: 20.0),

                  SizedBox(height: 20.0),
                  buildButtonContainer(),
                ],
              ),
            )));
  }

  Widget buildTextFieldTelephone(String hintText) {
    return TextField(
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
              borderRadius: BorderRadius.circular(100)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(90.0)),
          prefixIcon: Icon(Icons.phone, color: Colors.white)),
    );
  }

  Widget buildButtonContainer() {
    return Container(
        width: 150.0,
        height: 50.0,
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return GoogleMaps();
            }));
          },
          color: Colors.blue,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Text(
            'SUIVANT',
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
        ));
  }
}
