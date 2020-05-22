
import 'package:alonouz_mobile/page_usager/activite.dart';
import 'package:alonouz_mobile/page_usager/artisant.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<Artisant> artisants = [
  Artisant(
    nom: 'ZOUNOUN ',
    prenom: 'JONAS',
    telephone: '90552674',
    coord: LatLng(6.3605941, 2.417478),
    activite:
        Activite(id: 1, nom: 'Menusier', hue: BitmapDescriptor.hueViolet),
  ),
  Artisant(
    nom: 'Ma ',
    prenom: 'position',
    telephone: '',
    coord: LatLng(6.364536, 2.408593),
    activite: Activite(id: 0, hue: BitmapDescriptor.hueGreen),
  ),
  Artisant(
    nom: 'SOUSOU ',
    prenom: 'CHRIST',
    telephone: '95874216',
    coord: LatLng(6.365665, 2.407571),
    activite: Activite(id: 3, nom: 'Marçon', hue: BitmapDescriptor.hueYellow),
  ),
  Artisant(
    nom: 'DASSA ',
    prenom: 'JEAN',
    telephone: '62157849',
    coord: LatLng(6.364077, 2.407705),
    activite: Activite(id: 4, nom: 'Vitrié', hue: BitmapDescriptor.hueCyan),
  ),
  Artisant(
    nom: 'CODJO ',
    prenom: 'Mirabelle',
    telephone: '96220047',
    coord: LatLng(6.365054, 2.408594),
    activite: Activite(id: 2, nom: 'Couturière', hue: BitmapDescriptor.hueGreen),
  ),
  Artisant(
    nom: 'MESSAH ',
    prenom: 'CHRIST',
    telephone: '94550360',
    coord: LatLng(6.371476, 2.409013),
    activite: Activite(id: 8, nom: 'Tailleur', hue: BitmapDescriptor.hueCyan),
  ),
  Artisant(
    nom: 'BOKO',
    prenom: 'EMILE',
    telephone: '96020145',
    coord: LatLng(6.361995, 2.414488),
    activite: Activite(id: 10, nom: 'Plombier', hue: BitmapDescriptor.hueBlue),
  ),
  Artisant(
    nom: 'HOUGBEDJI ',
    prenom: 'SOLANGE',
    telephone: '90063454',
    coord: LatLng(6.384077, 2.407705),
    activite: Activite(id: 5, nom: 'Coiffeuse', hue: BitmapDescriptor.hueMagenta),
  ),
   Artisant(
    nom: 'AGBO ',
    prenom: 'Paul',
    telephone: '98550463',
    coord: LatLng(6.871476, 2.509013),
    activite: Activite(id: 8, nom: 'Tailleur', hue: BitmapDescriptor.hueCyan),
  ),
    Artisant(
    nom: 'GOHOU ',
    prenom: 'Christelle',
    telephone: '908436547',
    coord: LatLng(6.384077, 2.407705),
    activite: Activite(id: 5, nom: 'Coiffeuse', hue: BitmapDescriptor.hueMagenta),
  ),
  Artisant(
    nom: 'NOUMON ',
    prenom: 'Claude',
    telephone: '99552184',
    coord: LatLng(6.4605941, 2.317478),
    activite:
        Activite(id: 1, nom: 'Menusier', hue: BitmapDescriptor.hueViolet),
  ),
  Artisant(
    nom: 'AGOSSOU ',
    prenom: 'Prince',
    telephone: '97595169',
    coord: LatLng(6.7605941, 2.217478),
    activite:
        Activite(id: 9, nom: 'Mecanique auto', hue: BitmapDescriptor.hueOrange),
  ),

   Artisant(
    nom: 'BONOU ',
    prenom: 'Miguel',
    telephone: '90524896',
    coord: LatLng(6.3605941, 2.317478),
    activite:
        Activite(id: 6, nom: 'Brodeur', hue: BitmapDescriptor.hueRed),
  ),
];
