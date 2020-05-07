import 'package:alonouz_mobile/accueilAtr.dart';
import 'package:flutter/material.dart';



void main() { runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AccueilAtr(),
    )
 );
}

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
@override
void initState(){
  super.initState();
  Future.delayed(
    Duration( seconds: 3),
    () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AccueilAtr ()
          ),
        ); 
      },
  );
}


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.blueAccent),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                         CircleAvatar(
                           backgroundColor: Colors.white,
                           radius: 70.0,
                           child: Icon(
                             Icons.work,
                             color: Colors.purple[200],
                             size: 50.0,
                             ),
                         ),
                         Padding(
                           padding: EdgeInsets.only(top: 10.0),
                           ),
                           Text(
                             "Alônouzor",
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 24.0,
                               fontWeight: FontWeight.bold
                             ),
                           )
                        ],
                       ),
                    ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            ),
                            Text(
                              "En ligne pour tous",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                              ),
                            )
                        ],
                      ),
                      )
              ],
            )
          ],
          ),
      );
    }
}



