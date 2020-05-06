import 'package:flutter/material.dart';

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
  
 

