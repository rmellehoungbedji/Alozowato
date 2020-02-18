
import 'package:alonouz_mobile/widgets/categorySelector.dart';
import 'package:alonouz_mobile/widgets/recenChats.dart';

import 'package:flutter/material.dart';

class Messagerie extends StatefulWidget{
  @override
  _MessagerieState createState() =>  _MessagerieState();
       
    }
  
  class _MessagerieState extends State <Messagerie> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white, 
          onPressed: () {},
        ),
        title: Text('Messages',
           style: TextStyle(
             fontSize: 20.0,
             fontWeight: FontWeight.bold 
             ),
        ),
        elevation: 1.0,
        actions: <Widget>[
          IconButton( 
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white, 
            onPressed: () {},
            )
        ],
        
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
               child: Container(
               decoration: BoxDecoration(
               color: Colors.white,
                 borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                 ),
               ),
               child: Column(  
                 children: <Widget>[
                  Recentchats(),
                 ],
               ),
            ),
          ),
            ],
            ),
          );
      }
}
        
  
  
  
 