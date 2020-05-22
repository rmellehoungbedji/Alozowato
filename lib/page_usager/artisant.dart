
import 'package:alonouz_mobile/page_usager/activite.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Artisant {
  String nom;
  String prenom;
  String telephone;
  LatLng coord;
  Activite activite;

  Artisant({this.activite, this.coord, this.nom, this.prenom, this.telephone});
}
