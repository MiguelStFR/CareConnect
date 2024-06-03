import 'package:care_connect/Tools/Values/Lists.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../Tools/Values/Enums.dart';
import 'DetailsModel.dart';

class MarkerModel{

  int id;
  Marker marker;
  int userId;
  int numIndividuos = 0;
  String descricao = '';
  late String markerType = MarkerTypeEnum.nd.toString();
  late List<String> tiposNecessidadeList = [];
  late List<String> generosList = [];
  late List<String> faixaEtariaList = [];
  late String Contatos = '';

  MarkerModel({required this.id, required this.marker, required this.userId}){}

  //TODO
  void saveMarker(){}
  //TODO
  void getMarker(){}
  //TODO
  void updateMarker(){}
  //TODO
  void deleteMarker(){}
}