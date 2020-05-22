import 'package:flutter/material.dart';

class EspaceDiscussion extends StatefulWidget {
  @override

  _EspaceDiscussionState createState() => _EspaceDiscussionState();
}

class _EspaceDiscussionState extends State<EspaceDiscussion> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
         iconTheme: IconThemeData(color: Colors.black),
         backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
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
                minRadius:30,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Inolvic',
                   style: TextStyle(color: Colors.black),
                ),
                 Text(
                  'En ligne',
                   style: TextStyle(
                     color: Colors.grey,
                     fontSize: 12,
                    ),
                ),  
              ]
            )
          ],
        )
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Flexible(
                  child: ListView.builder(
                    itemCount: 1,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Text(
                            '20/05/20',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Bubble(
                            message: 'je veux prendre un rendez-vous.',
                              isMe: true,
                          ),
                          Bubble(
                            message: 'Dites moi quand vous serez disponible..',
                              isMe: true,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:5),
                          ),
                          Text(
                            'Aujourd\hui',
                             style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Bubble(
                            message: 'Ok.',
                              isMe: false,
                          ),
                           Bubble(
                            message: 'Je vous reviens.Merci',
                              isMe: false,
                          ),
                        ]
                      ),
                      );
                   },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                   BoxShadow(
                    color: Colors.grey[300],
                    offset: Offset(-2,0),
                    blurRadius: 5,
                  )
                ]
              ),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.camera), 
                    onPressed: (){},
                    color: Colors.blueGrey,
                  ),
                  IconButton(
                    icon: Icon(Icons.image), 
                    onPressed: (){},
                    color: Colors.blueGrey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                  ),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Taper message',
                        border: InputBorder.none 
                      )
                    )
                  ),
                  IconButton(
                    icon: Icon(Icons.send), 
                    onPressed: (){},
                    color: Colors.blueGrey,
                  ),
                ],
              ),
            )
          )
        ]
      ), 
    );
  }
} 

class Bubble extends StatelessWidget{
  final bool isMe;
  final String message;

  Bubble ({this.message, this.isMe});
  
  Widget build(BuildContext context) {
   return Container(
      margin: EdgeInsets.all(5),
      padding: isMe? EdgeInsets.only(left:20): EdgeInsets.only(right:20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            mainAxisAlignment: isMe? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment: isMe? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: <Widget>[
                Container(
                   padding: EdgeInsets.all(15),
                   decoration: BoxDecoration(
                     gradient: isMe? LinearGradient(
                       begin: Alignment.topRight,
                       end: Alignment.bottomLeft,
                       stops: [10,10],
                       colors: [
                          Colors.blueGrey,
                          Colors.blueGrey,
                       ]
                      ): LinearGradient(
                         begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [10,10],
                          colors: [
                            Color(0xFFEBF5FC),
                            Color(0xFFEBF5FC),
                          ]
                        ),
                        borderRadius: isMe? BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5),
                          bottomRight: Radius.circular(0),
                          bottomLeft: Radius.circular(5),
                        ) : BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                          bottomLeft: Radius.circular(0),
                   )
                  ),
                  child: Column(
                     crossAxisAlignment: isMe?  CrossAxisAlignment.end :  CrossAxisAlignment.start,
                     children: <Widget>[
                       Text(
                         message,
                         textAlign: isMe? TextAlign.end : TextAlign.start,
                         style: TextStyle(
                           color: isMe? Colors.white : Colors.grey,
                         ),
                       )
                     ],
                  ), 
                ),
             ],
          )
        ],
      ),
    );
  }

}