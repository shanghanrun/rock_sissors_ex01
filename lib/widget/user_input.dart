import 'package:flutter/material.dart';
import 'package:rock_sissors_ex01/const/input_type.dart';
import 'package:rock_sissors_ex01/widget/input_card.dart';

class UserInput extends StatelessWidget {
  final bool isDone;
  const UserInput({required this.isDone, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return const Placeholder();
    }

    return Row(
      children: getInputs(),
    );
  }

  List<Widget> getInputs() {
    return InputType.values
        .map((type) => InputCard(
              type: type,
            ))
        .toList();
  }
}
