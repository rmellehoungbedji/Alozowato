import 'package:alonouz_mobile/pages_artisans/inscriptionArtis1.dart';
import 'package:flutter/material.dart';

class InscriArtis extends StatefulWidget {
  @override
  _InscriArtisState createState() => _InscriArtisState();
}

class _InscriArtisState extends State<InscriArtis> {
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
        ),
        body: Container(
            decoration: _buildBackground(),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.85),
              ),
              padding: EdgeInsets.only(
                  top: 0.0, left: 20.0, right: 20.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[ 
                  Text(
                    'INSCRIPTION',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  buildTextFieldNom("Nom"),
                  SizedBox(
                    height: 20.0,
                  ),
                  buildTextFieldPrenom("Prenom"),
                  SizedBox(height: 20.0),
                  Container(),
                  SizedBox(height: 40.0),
                  buildButtonContainer(),
                ],
              ),
            )));
  }

  Widget buildTextFieldNom(String hintText) {
    return TextField(
      decoration: InputDecoration(
          labelText: 'Entrer votre nom',
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
          prefixIcon: Icon(Icons.person, color: Colors.white)),
    );
  }

  Widget buildTextFieldPrenom(String hintText) {
    return TextField(
      decoration: InputDecoration(
          labelText: 'Entrer votre prénom',
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
          prefixIcon: Icon(Icons.person, color: Colors.white)),
    );
  }

  Widget buildButtonContainer() {
    return Container(
        width: 150.0,
        height: 50.0,
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return InscriptionArtis1();
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
