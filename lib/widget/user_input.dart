import 'package:flutter/material.dart';
import 'package:rock_sissors_ex01/const/input_type.dart';
import 'package:rock_sissors_ex01/widget/input_card.dart';

class UserInput extends StatelessWidget {
  final bool isDone;
  final Function(InputType) callback;
  const UserInput({required this.isDone, required this.callback, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      // return const Placeholder();
      return Row(
        children: getInputs(callback),
      );
    }

    return Row(
      children: getInputs(callback),
    );
  }

  List<Widget> getInputs(callback) {
    return InputType.values
        .map((type) => InputCard(type: type, callback: callback))
        .toList();
  }
}
