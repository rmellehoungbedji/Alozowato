import 'package:alonouz_mobile/pages_artisans/alertNon.dart';
import 'package:alonouz_mobile/pages_artisans/alerteOui.dart';
import 'package:flutter/material.dart';

class InscriptionArtis2 extends StatefulWidget {
  @override
  _InscriptionArtis2State createState() => _InscriptionArtis2State();
}

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
                      ],
                      content: Text("Vous êtes dans votre atelier?"),
                    ))
              ],
            ),
          ),
        ));
  }
}
