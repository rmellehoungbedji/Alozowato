import 'package:alonouz_mobile/pages_artisans/inscription1.dart';
import 'package:flutter/material.dart';


class InscriptionAtr extends StatefulWidget {
  @override
  _InscriptionAtrState createState() => _InscriptionAtrState();
}

class _InscriptionAtrState extends State<InscriptionAtr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
     
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 18.0),
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
                        Text('Inscription',
                          style: TextStyle(
                              fontSize: 30.0, 
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        SizedBox(height: 20.0),
                        Text('Nom',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: "Poppins-Medium",
                          ), 
                        ),
                        TextField(
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
                                  borderRadius: BorderRadius.circular(20)),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)
                              ),
                              prefixIcon: Icon(Icons.person, color: Colors.white)
                              ),
                        ),
                        SizedBox(height: 30.0),
                        Text('Prénom',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: "Poppins-Medium",
                          ),
                        ),
                        TextField(
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
                                  borderRadius: BorderRadius.circular(20)),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                              prefixIcon: Icon(Icons.person, color: Colors.white)),  
                        ),    
                      ]
                    )
                  ),  
                ),
              ),
              SizedBox(height: 30.0),
              Center(
                child: Container(
                  width: 150.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Inscription1();
                      }));
                    },
                    color: Colors.blueGrey[300],
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
                  )), 
                ),
                new Spacer(),
            ],
            
          ),
          
        ],
      ),
    
    );
  
    
    }

    

 
    
}
