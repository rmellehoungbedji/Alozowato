import 'package:alonouz_mobile/pages_artisans/inscriptionArtis1.dart';
import 'package:flutter/material.dart';

class InscriArtis extends StatefulWidget {
  @override
  _InscriArtisState createState() => _InscriArtisState();
}

<<<<<<< HEAD

     BoxDecoration _buildBackground(){
   
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
        
      body: GestureDetector(
        onTap: ()=> FocusScope.of(context).unfocus(),
        child: Container(
        decoration: _buildBackground(),
            child :
            Container(
              decoration: BoxDecoration(
                color: Colors.white10.withOpacity(0.5),
              ),
                    padding: EdgeInsets.only(top:00.0, left: 20.0, right: 20.0, bottom: 20.0),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //SizedBox(height: 60.0,),
                      Text(
                        'INSCRIPTION',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w500, 
                          color: Colors.blue
                        ),
                      ),
                      SizedBox(height: 40.0,),
                      buildTextFieldNom("Nom"),
                      SizedBox(height: 20.0,),
                      buildTextFieldPrenom("Prenom"),
                      SizedBox(height: 20.0),
                      Container(

                      ),
                      SizedBox(height: 40.0),
                      buildButtonContainer(),
                    ],
                    ),
                    )
                    ),
      )
                  );

                  } 

                  Widget buildTextFieldNom(String hintText){
                  return TextField(
                  decoration: InputDecoration(
                  labelText: 'Entrer votre nom',
                  hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  ),
                  enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20.0),
                     borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(100)
                  ) ,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0)
                  ),
                  prefixIcon:
                  Icon(Icons.person, color: Colors.blue) 
                  ),
                  );
                  }

                  Widget buildTextFieldPrenom(String hintText){
                  return TextField(
                  decoration: InputDecoration(
                  labelText: 'Entrer votre prénom',
                  hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  ),
                  enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20.0),
                     borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(100)
                  ) ,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0)
                  ),
                  prefixIcon:
                  Icon(Icons.person, color: Colors.blue)
                  ),
                  );
                  }

                  Widget buildButtonContainer(){
                  return Container(
                  width: 150.0,
                  height: 50.0,
                  child:
                  RaisedButton(
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
                  ) 

                  );
=======
class _InscriArtisState extends State<InscriArtis> {
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
                  //SizedBox(height: 60.0,),
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
>>>>>>> 458105a83afdbce6bad57cdfbaaabd57aef0c5ae

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
