import 'package:alonouz_mobile/pages_artisans/chat.dart';
import 'package:alonouz_mobile/pages_artisans/espaceDiscussion.dart';
import 'package:flutter/material.dart';

class Messagerie extends StatefulWidget {
  @override
  _MessagerieState createState() => _MessagerieState();
}

class _MessagerieState extends State<Messagerie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         elevation: 4.0,
          backgroundColor: Colors.white,
          title: Text(
          'Messages',
          style: TextStyle(fontSize: 20.0,  color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.menu),
            iconSize: 30.0,
            color: Colors.black,
            onPressed: () {},
         ),
        ],
         
      ),
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Chat(
                title: 'Discussion',
              ),
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                return Material(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => EspaceDiscussion(),
                      ),
                     ); 
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                       padding: EdgeInsets.all(15),
                       decoration: BoxDecoration(
                           boxShadow: [
                             BoxShadow(
                               color: Colors.grey.withAlpha(50),
                               offset: Offset(0,0),
                               blurRadius: 5,
                             ),
                           ],
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                       ),
                      child: Row(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                               Container(
                                 child: CircleAvatar(
                                      child: ClipOval(
                                        child: Center(
                                          child: Icon(
                                            Icons.person,
                                            color: Colors.white
                                          ),
                                        )
                                      ),
                                    backgroundColor: Colors.grey,
                                    minRadius: 35,
                                 ),
                               )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:10),
                          ),
                          Expanded(
                            child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                 Text(
                                    'Inolvic',
                                     style: TextStyle(
                                     color: Colors.black,
                                     fontSize: 18.0, 
                                     fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top:5),
                                  ),
                                  Text(
                                    'Comment allez-vous',
                                     style: TextStyle(
                                     color: Colors.black87,
                                     fontSize: 14.0, 
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top:5),
                                  ),
                                  Text(
                                    '12:45',
                                     style: TextStyle(
                                     color: Colors.grey,
                                     fontSize: 10.0, 
                                    ),
                                  ),
                               ],
                            ) 
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: Icon(
                                  Icons.chevron_right,
                                  size: 18,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                 );
                },
              ),
             ],
          ),
      ),
    );
  }
}



