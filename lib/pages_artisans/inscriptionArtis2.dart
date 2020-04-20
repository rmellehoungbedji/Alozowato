
import 'package:alonouz_mobile/pages_artisans/messagerie.dart';
import 'package:flutter/material.dart';

class InscriptionArtis2 extends StatefulWidget {
  @override
  _InscriptionArtis2State createState() => _InscriptionArtis2State();
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
          body: Container(
      decoration: _buildBackground(),
          child :
          Container(
            decoration: BoxDecoration(
             color: Colors.white.withOpacity(0.30),
           ),
           child: Column(
             children: <Widget>[
               Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 70),
                  child: AlertDialog(
                    
                    actions: <Widget>[
                      FlatButton(child: Text("Non"), 
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return AlertNon();
                           }));
                      },
                      ),
                      FlatButton(child: Text("Oui"), 
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return AlertOui();
                           }));
                        },
                      )
=======
class _InscriptionArtis2State extends State<InscriptionArtis2> {
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
                              return AlertNon();
                            }));
                          },
                        ),
                        FlatButton(
                          child: Text("Oui"),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return AlertOui();
                            }));
                          },
                        )
>>>>>>> 458105a83afdbce6bad57cdfbaaabd57aef0c5ae
                      ],
                      content: Text("Vous êtes dans votre atelier?"),
                    ))
              ],
            ),
          ),
<<<<<<< HEAD
          )
          );
          
    
    }
  
} 

 class AlertOui extends StatefulWidget{
   @override
  _AlertOuiState createState() => _AlertOuiState();   
  }

  class _AlertOuiState extends State<AlertOui>{
    
  @override
    Widget build(BuildContext context) {

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
          iconTheme: IconThemeData(
          color: Colors.red[300]
          ),
          ),
          body: Container(
          decoration: _buildBackground(),
          child :
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.30),
           ),
           child: Column(
             children: <Widget>[
               Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 70),
  
                  child: AlertDialog(
                   
                    actions: <Widget>[
                      FlatButton(child: Text("ok"), 
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Messagerie ();
                           }));
                        
                      },
                      ),
                      
                      ],
                    content: Text("Activer votre localisation ! "),
                  )
             )
            
          ],
          ),
          ),
          )
          );
          
    
    }
  
}

class AlertNon extends StatefulWidget{
   @override
  _AlertNonState createState() => _AlertNonState();   
  }

  class _AlertNonState extends State<AlertNon>{
    
  @override
    Widget build(BuildContext context) {

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
          body: Container(
      decoration: _buildBackground(),
          child :
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.85),
           ),
           child: Column(
             children: <Widget>[
               Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 70),
                  child: AlertDialog(
                      actions: <Widget>[
                      FlatButton(child: Text("OK "), 
                      onPressed: () {
                        Navigator.pop (context);
                      },
                      )
                      ],
                    content: Text("Essayez d'être dans votre \n atelier afin de valider \n votre inscription"),
                  )
             )
            
          ],
          ),
          ),
          )
          );
           
    
    }
  
}
  
 

=======
        ));
  }
}
>>>>>>> 458105a83afdbce6bad57cdfbaaabd57aef0c5ae
