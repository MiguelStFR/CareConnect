import 'package:care_connect/Tools/FireBase/MarkerSql.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../Models/DetailsModel.dart';
import '../Models/MarkerModel.dart';
import '../Tools/Parameters/UserParameters.dart' as user;
import '../Tools/Values/Lists.dart';

class DetailsController {

  final numIndividuosController = TextEditingController();
  final descricaoController = TextEditingController();
  final contatosController = TextEditingController();
  String selectedMarkerType = "ND";
  String selectedGeneros = "ND";
  String selectedFaixaEtaria = "ND";
  String selectedNecessidade = "ND";
  List<String> selectedNecessidadeList = [];

  LatLng position;
  int id = 0;
  late MarkerModel marker;


  DetailsController({required this.position}){
    createMarker();
  }

  void disposeControllers(){
    contatosController.dispose();
    numIndividuosController.dispose();
    descricaoController.dispose();
  }

  void createMarker(){
    Marker markerAux = Marker(
      markerId: MarkerId(position.toString()),
      position: position,
    );
    marker = MarkerModel(id: id, marker: markerAux, userId: user.user.id);
  }

  void updateCampos(){
    updateDescricao();
    updateNumIndividuos();
  }

  void updateNumIndividuos(){
    if(int.parse(numIndividuosController.text) != marker.numIndividuos) {
      marker.numIndividuos = int.parse(numIndividuosController.text);
    }
  }

  void updateDescricao(){
    if(descricaoController.text != marker.descricao){
      marker.descricao = descricaoController.text;
    }
  }

  void updateContatos(){
    if(descricaoController.text != marker.Contatos){
      marker.Contatos = descricaoController.text;
    }
  }

  void Save(){
    marker.saveMarker();
  }

}