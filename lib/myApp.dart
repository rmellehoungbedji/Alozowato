


import 'package:flutter/material.dart';

import 'accueil.dart';
  



  class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) { 
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Alônouzor',
        home : Accueil(),
    );
  }
}