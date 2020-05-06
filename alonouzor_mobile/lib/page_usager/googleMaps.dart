import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class GoogleMaps extends StatefulWidget {
  @override
  State<GoogleMaps> createState() => GoogleMapsState();
}

class GoogleMapsState extends State<GoogleMaps> {
  Completer<GoogleMapController> _controller = Completer();
   MapType type;
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(6.362544696066969, -2.4221024603972435),
    zoom: 14.4746,
  );
  Set<Marker> markers;
 
     @override
     void initState() { 
       super.initState();
       type = MapType.normal;
       markers = Set.from([]);
     }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Alônouzor'),
          centerTitle:true,
        ) ,
      body: Stack(
        children: <Widget>[
          GoogleMap(
            markers: markers,
            mapType: type,
            onTap: (position){
              Marker mk1 = Marker(
                markerId: MarkerId('1'), 
                position: position,
              );
               setState(() {
                 markers.add(mk1);
               });
            },
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
             Align(
                 alignment: Alignment.bottomRight,
                 child: Row(
                   children: <Widget>[
                     FloatingActionButton(
                          onPressed: (){
                             setState(() {
                               type =type == MapType.normal ? MapType.hybrid:
                               MapType.normal;
                          }); },
                            child: Icon(Icons.map),
                   ),
                     FloatingActionButton(
                         child: Icon(Icons.zoom_in),
                         onPressed: () async{
                           (await _controller.future).animateCamera
                            (CameraUpdate.zoomIn());
                         },
                      ),

                      FloatingActionButton(
                         child: Icon(Icons.zoom_out),
                         onPressed: () async{
                           (await _controller.future).animateCamera
                            (CameraUpdate.zoomOut());
                         },
                      ), 

             ],
           ),
         )
        ],
      ),
    );
  }
}