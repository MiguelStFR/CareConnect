import '../Tools/Values/Enums.dart';
class User {
  int id = -0;
  String? name;
  String? email;
  String? password;
  UserType? userType;
  bool isSave = false;
  bool isLogged = false;
  DateTime createdOn = DateTime.now();
  DateTime lastAlteration = DateTime.now();

  User({
    required this.name,
    required this.email,
    required this.password
  });
  //TODO
  void saveUserLocal(){
    isSave = true;
    lastAlteration = DateTime.now();
  }
  //TODO
  void saveUserRemote(){}
  //TODO
  void getUserLocal(){}
  //TODO
  void getUserRemote(){}
  //TODO
  void updateUserLocal(){}
  //TODO
  void updateUserRemote(){}
  //TODO
  void deleteUserLocal(){}
  //TODO
  void deleteUserRemote(){}
}