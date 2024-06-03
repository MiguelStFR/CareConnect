import 'package:flutter/material.dart';
import 'package:care_connect/Views/Screens/MapView.dart';
import 'package:flutter/services.dart';

import 'Controllers/UserController.dart';

void main() async{
  runApp(CareConnect());
}

class CareConnect extends StatelessWidget {

  final UserController userCotroller = UserController();

  CareConnect({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp(
      title: 'Care Connect',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MapView(userController: userCotroller),
    );
  }
}
