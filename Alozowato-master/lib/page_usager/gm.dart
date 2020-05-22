import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GM extends StatefulWidget {
  @override
  State<GM> createState() => GMSampleState();
}

class GMSampleState extends State<GM> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: CameraPosition(
          target: LatLng(40.688841, -74.044015),
          zoom: 11,
        ),
      ),
    );
  }
}