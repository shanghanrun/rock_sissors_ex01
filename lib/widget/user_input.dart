import 'package:flutter/material.dart';
import 'package:rock_sissors_ex01/const/input_type.dart';
import 'package:rock_sissors_ex01/widget/user_input_card.dart';

class UserInput extends StatelessWidget {
  const UserInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: getInputs(),
    );
  }

  List<Widget> getInputs() {
    return InputType.values
        .map((type) => UserInputCard(type: type))
        .toList();
  }
}
