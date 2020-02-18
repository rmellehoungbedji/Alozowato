import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Googlemaps extends StatefulWidget {
  @override
  _GooglemapsState createState() => _GooglemapsState();
}

class _GooglemapsState extends State<Googlemaps> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(6.36528, -2.431402);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      
        appBar: AppBar(
          title: Text('Maps Sample App'),
          backgroundColor: Colors.green[700],
          actions: <Widget>[
          IconButton(
            icon:Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
            )
        ],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
     );
  }
}