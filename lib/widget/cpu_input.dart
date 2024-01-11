import 'package:flutter/material.dart';
import 'package:rock_sissors_ex01/const/input_type.dart';
import 'package:rock_sissors_ex01/widget/input_card.dart';

class CpuInput extends StatelessWidget {
  final bool isDone;
  final InputType cpuInput;
  final Function(InputType) callback;
  const CpuInput(
      {required this.isDone,
      required this.cpuInput,
      required this.callback,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InputCard(type: cpuInput, callback: callback);
  }
}
