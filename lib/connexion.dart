import 'package:flutter/material.dart';

class Connexion extends StatefulWidget{
  Connexion({Key key, this.title}): super(key: key);

  final String title;

  @override
_ConnexionState createState()=> _ConnexionState();
final formKey = GlobalKey<FormState>();

}

class _ConnexionState extends State<Connexion> {
  get numberController => null;

  get formkey => null;

  get emailController => null;

  get logIn => null;

  get textController => null;


  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: new Form(
    key: formkey,
    child: Padding(
        padding: new EdgeInsets.all(20),
        child: new Column(
            children: <Widget>[
                new TextFormField(
                controller: textController,
                keyboardType:
                    TextInputType.text, // Use email input type for emails.
                decoration: new InputDecoration(
                    hintText: 'pseudo', labelText: 'pseudo'),
                ),
                new TextFormField(
                obscureText: true, // Use secure text for passwords.
                decoration:
                    new InputDecoration(hintText: '***', labelText: 'Mot de passe'),
                ),
                new Container(
                    child: new RaisedButton(
                        child: new Text('Connexion'),
                        onPressed: logIn,
                    ),
                    margin: new EdgeInsets.only(top: 20.0),
                ),
            ],
        ),
    ),
),
);
   
  }

}

