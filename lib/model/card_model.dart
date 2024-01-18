import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rock_sissors_ex01/const/input_type.dart';

class CardModel with ChangeNotifier {
  bool isDone;
  InputType userInput;
  InputType cpuInput;

  CardModel(
      {required this.isDone, required this.userInput, required this.cpuInput});

  void changeIsDone() {
    isDone = !isDone;
    notifyListeners();
  }

  void changeInput(InputType type) {
    userInput = type;
    var index = Random().nextInt(3);
    cpuInput = InputType.values[index];
    notifyListeners();
  }
}
