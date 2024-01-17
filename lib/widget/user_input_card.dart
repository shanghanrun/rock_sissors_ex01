import 'package:flutter/material.dart';
import 'package:rock_sissors_ex01/const/input_type.dart';

class UserInputCard extends StatelessWidget {
  final bool isDone;
  final InputType userInput;
  final InputType type;
  final Function(InputType) callback;

  const UserInputCard({
    required this.isDone,
    required this.userInput,
    required this.type,
    required this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => callback(type), // 혹은 ()=> callback(),
      child: Expanded(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(
                width: 8,
                color:
                    (isDone && type == userInput) ? Colors.blue : Colors.grey),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Image.asset(type.path),
        ),
      ),
    );
  }
}
