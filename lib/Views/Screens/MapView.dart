import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../Controllers/MapViewController.dart';
import '../../Controllers/UserController.dart';

class MapView extends StatefulWidget {

  final UserController userController;
  final MapViewController mapViewController = MapViewController();
  final Completer<GoogleMapController> googleMapController = Completer<GoogleMapController>();

  MapView({super.key, required this.userController});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: widget.mapViewController.initialPosition,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            onCameraMove: widget.mapViewController.onCameraMove,
            markers: widget.mapViewController.markers,
            onTap: (position){
              setState(()=>
                  widget.mapViewController.addTempMarker(position, context)
              );
            },
            onMapCreated: (GoogleMapController controller) {
              widget.googleMapController.complete(controller);
            },
          ),
        ],
      )
    );
  }
}


