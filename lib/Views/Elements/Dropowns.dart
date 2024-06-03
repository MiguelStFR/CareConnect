
import 'package:flutter/material.dart';

import '../../Tools/Values/Enums.dart';

DropdownButton<String> DropdownList(List<String> valuesList, TextEditingController controller, BuildContext context){

  return DropdownButton<String>(
    value: controller.text,
    icon: const Icon(Icons.arrow_downward),
    elevation: 16,
    style: const TextStyle(color: Colors.deepPurple),
    underline: Container(
      height: 2,
      color: Colors.deepPurpleAccent,
    ),
    onChanged: (String? value) {
      // setState(() {
      //   controller.text = value!;
      // });
    },
    items: valuesList.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
  );
}

