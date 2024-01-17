import 'package:flutter/material.dart';
import 'package:rock_sissors_ex01/const/input_type.dart';

class CardModel with ChangeNotifier {
  late bool isDone;
  late InputType inputType;
  final Function(InputType) callback;

  CardModel(
      {required this.isDone, required this.inputType, required this.callback});

  void changeIsDone() {
    isDone = !isDone;
    notifyListeners();
  }

  void changeInputType(InputType type) {
    inputType = type;
    notifyListeners();
  }
}
