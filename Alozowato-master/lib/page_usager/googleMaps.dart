import 'package:alonouz_mobile/page_usager/activite.dart';
import 'package:alonouz_mobile/page_usager/artisant.dart';
import 'package:alonouz_mobile/page_usager/fake_data_activite.dart';
import 'package:alonouz_mobile/page_usager/fake_data_artisant.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'dart:async';


class GoogleMaps extends StatefulWidget {
  @override
  _GoogleMapsState createState() => _GoogleMapsState();
}

class _GoogleMapsState extends State<GoogleMaps> {
  Completer<GoogleMapController> _controller = Completer();
  GoogleMapController mapController;
  CameraPosition cameraPosition = CameraPosition(
    target: LatLng(7.781963, 2.184139),
    zoom: 7.0,
  );
  Iterable markers = [];
  List<Activite> activites = [];
  List<DropdownMenuItem<Activite>> _dropDownItems;
  Activite activiteSelectionne;

  @override
  void initState() {
    super.initState();
    _dropDownItems = buildDropdownMenuItems(listactivites);
    activiteSelectionne = _dropDownItems[0].value;
    onChangeDropDownItem(activiteSelectionne);
  }

  List<DropdownMenuItem<Activite>> buildDropdownMenuItems(List activite) {
    List<DropdownMenuItem<Activite>> items = List();
    for (Activite activitee in activite) {
      items.add(DropdownMenuItem(
        child: Text(activitee.nom),
        value: activitee,
      ));
    }
    return items;
  }

  onChangeDropDownItem(Activite activite) {
    List<Artisant> filterList = List();

    if (activite.id == 0) {
      filterList = artisants;
      buildAndShowMarker(filterList);
    } else {
      for (Artisant artisant in artisants) {
        if (artisant.activite.id == activite.id) {
          filterList.add(artisant);
        }
      }
    }
    setState(() {
      activiteSelectionne = activite;
    });
    buildAndShowMarker(filterList);
  }

  onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: cameraPosition,
            markers: Set.from(markers),
            onMapCreated: onMapCreated,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: DropdownButtonHideUnderline(
                  child: ButtonTheme(
                    alignedDropdown: true,
                    child: DropdownButton(
                      elevation: 10,
                      isExpanded: true,
                      items: _dropDownItems,
                      onChanged: onChangeDropDownItem,
                      value: activiteSelectionne,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: _getCurrentLocation,
                child: Icon(
                  Icons.location_searching,
                  color: Colors.blue,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> _getCurrentLocation() async {
    GoogleMapController controller = await _controller.future;
    Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      print('ebeb');
      setState(
        () {
          print(position);
          CameraPosition cameraPosition = CameraPosition(
            bearing: 192.8334901395799,
            tilt: 59.440717697143555,
            zoom: 15.151926040649414,
            target: LatLng(position.latitude, position.longitude),
          );
          controller.animateCamera(
            CameraUpdate.newCameraPosition(cameraPosition),
          );
          markers = Iterable.generate(1, (index) {
            return Marker(
              markerId: MarkerId("marker1"),
              position: LatLng(position.latitude, position.longitude),
            );
          });
        },
      );
    }).catchError((e) {
      print(e);
    });
  }

  buildAndShowMarker(List<Artisant> artisantsFilter) {
    Iterable _markers = Iterable.generate(artisantsFilter.length, (index) {
      return Marker(
        infoWindow: InfoWindow(
          title: artisantsFilter[index].nom + artisantsFilter[index].prenom,
          snippet: artisantsFilter[index].telephone,
        ),
        markerId: MarkerId("marker$index"),
        position: artisantsFilter[index].coord,
        icon: BitmapDescriptor.defaultMarkerWithHue(
            artisantsFilter[index].activite.hue),
      );
    });
    setState(() {
      markers = _markers;
    });
  }
}
