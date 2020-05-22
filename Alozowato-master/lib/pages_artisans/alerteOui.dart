import 'package:alonouz_mobile/pages_artisans/messagerie.dart';

import 'package:flutter/material.dart';

class AlertOui extends StatefulWidget {
  @override
  _AlertOuiState createState() => _AlertOuiState();
}

class _AlertOuiState extends State<AlertOui> {
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
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Container(
          decoration: _buildBackground(),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.85),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 0.0, vertical: 70),
                    child: AlertDialog(
                      actions: <Widget>[
                        FlatButton(
                          child: Text("ok"),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Messagerie();
                            }));
                          },
                        ),
                      ],
                      content: Text("Activer votre localisation ! "),
                    ))
              ],
            ),
          ),
        ));
  }
}
