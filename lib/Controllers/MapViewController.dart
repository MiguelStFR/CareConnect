import 'package:care_connect/Controllers/DetailsController.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../Views/Screens/DetailsView.dart';
import '../Models/MarkerModel.dart';

class MapViewController {

  List<MarkerModel> markersList = [];
  Set<Marker> markers = {};
  LatLng lastRegisteredPosition = LatLng(-19.9228622, -43.992595);
  CameraPosition initialPosition = CameraPosition(target: LatLng(-19.9228622, -43.992595), zoom: 15.0000);

  MapViewController(){
    setInitialPositions();
    setMarkersList();
  }

  void setInitialPositions() async{
    getUserCurrentLocation().then((value){
      initialPosition = CameraPosition(target: LatLng(value.latitude, value.longitude), zoom: 15.0000);
      lastRegisteredPosition = initialPosition.target;
    });
  }
  //TODO
  void setMarkersList(){}

  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission().then((value) {}).onError((error, stackTrace){
      if (kDebugMode) {
        print(error.toString());
      }
    });
    return await Geolocator.getCurrentPosition();
  }

  void onCameraMove(CameraPosition position) {
    lastRegisteredPosition = position.target;
  }

  void openDetailsScreen(BuildContext context, LatLng position){
    DetailsController detailsController = DetailsController(position: position);
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailsScreen(detailsController: detailsController))
    );
  }

  void addTempMarker(LatLng position, BuildContext context){
      markers.add(
          Marker(
            markerId: const MarkerId('markerAdd'),
            icon:  BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
            position: LatLng(position.latitude, position.longitude),
            draggable: true,
            infoWindow: const InfoWindow(
                title: 'Local',
                snippet: 'Pressione e arraste para a posição desejada, clique para editar e salvar\n',
            ),
            onTap:(){
              openDetailsScreen(context, position);
            },
          )
      );
  }
}