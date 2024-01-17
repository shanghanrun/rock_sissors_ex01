import 'package:flutter/material.dart';
import 'package:rock_sissors_ex01/const/input_type.dart';
import 'package:rock_sissors_ex01/widget/user_input_card.dart';

class UserInput extends StatelessWidget {
  final bool isDone;
  final InputType userInput;
  final Function(InputType) callback;
  const UserInput(
      {required this.isDone,
      required this.userInput,
      required this.callback,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: getInputs(callback),
    );
  }

  List<Widget> getInputs(callback) {
    return InputType.values
        .map((type) => Expanded(
            child: UserInputCard(
                isDone: isDone,
                userInput: userInput,
                type: type,
                callback: callback)))
        .toList();
  }
}
