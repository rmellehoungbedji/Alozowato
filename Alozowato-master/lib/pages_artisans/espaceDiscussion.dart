import 'package:alonouz_mobile/models/messag.dart';
import 'package:alonouz_mobile/models/user.dart';
import 'package:flutter/material.dart';

class EspaceDiscussion extends StatefulWidget {

  final User user;
  EspaceDiscussion({this.user});
  @override
  _EspaceDiscussionState createState() => _EspaceDiscussionState();
}

class _EspaceDiscussionState extends State<EspaceDiscussion> {
  _buildMessage(Message messages, bool isMe){
      return Container(
         margin: isMe
           ? EdgeInsets.only(
             top: 8.0,
             bottom: 8.0,
             left: 80.0
           )
           : EdgeInsets.only(
             top: 8.0,
             bottom: 8.0,
             right: 80.0
           ),
           padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
           width: MediaQuery.of(context).size.width * 0.75,
           decoration: BoxDecoration(
             color: isMe ? Colors.blue[50] : Colors.blue[100],
             borderRadius: isMe
             ? BorderRadius.only(
               topLeft: Radius.circular(15.0),
               bottomLeft: Radius.circular(15.0),
             )
             : BorderRadius.only(
               topRight: Radius.circular(15.0),
               bottomRight: Radius.circular(15.0)
             ),
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Text(messages.time,
                 style: TextStyle(
                   color: Colors.blueGrey,
                   fontSize: 16.0,
                   fontWeight: FontWeight.w600,
                 )
               ),
               SizedBox(height:8.0),
               Text(messages.text,
                 style: TextStyle(
                   color: Colors.blueGrey,
                   fontSize: 16.0,
                   fontWeight: FontWeight.w600,
                 )
               ),
             ],
           ),
      );
  }


  _buildMessageComposer() {
   return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        height: 70.0,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.photo),
              iconSize: 25.0,
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            ),
            Expanded(
              child: TextField(
                textCapitalization: TextCapitalization.sentences,
                onChanged: (value){},
                decoration: InputDecoration.collapsed(
                  hintText: 'Ecrire....',
                ),
               ),
              ),
             IconButton(
              icon: Icon(Icons.send),
              iconSize: 25.0,
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            ),
          ]
        ),
   );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(widget.user.name,
        style: TextStyle(
             fontSize: 20.0,
             fontWeight: FontWeight.bold 
            ),
        ),
        elevation: 1.0,
        actions: <Widget>[
          IconButton( 
            icon: Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.white, 
            onPressed: () {},
            )
        ],
        ),
        body: GestureDetector(
          onTap: ()=> FocusScope.of(context).unfocus(),
           child: Column(
            children: <Widget>[
              Expanded(
                   child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)
                    ),
                  ),
                  child: ClipRRect(
                     borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(35.0)
                    ),
                       child: ListView.builder(
                      //;reverse: true,
                      padding: EdgeInsets.only(top: 15.0),
                      itemCount: message.length,
                      itemBuilder: (BuildContext context, int index){
                        final Message messages = message[index];
                        final bool isMe = messages.sender.id == currentUser.id;
                        return _buildMessage(messages, isMe);
                      } ,
                    ),
                  ),
                ),
              ),
              _buildMessageComposer(),
            ],
          ),
        ),
    );
  }
} 