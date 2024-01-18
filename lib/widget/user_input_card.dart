import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rock_sissors_ex01/const/input_type.dart';
import 'package:rock_sissors_ex01/model/card_model.dart';

class UserInputCard extends StatelessWidget {
  InputType type;
  UserInputCard({required this.type, super.key});

  @override
  Widget build(BuildContext context) {
    var isDone = Provider.of<CardModel>(context).isDone;
    var userInput = Provider.of<CardModel>(context).userInput;
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          border: Border.all(
              width: 8,
              color: (isDone && type == userInput) ? Colors.blue : Colors.grey),
          borderRadius: BorderRadius.circular(24),
        ),
        child: InkWell(
            onTap: () {
              Provider.of<CardModel>(context, listen: false).changeIsDone();
              Provider.of<CardModel>(context, listen: false).changeInput(type);
            },
            child: Image.asset(type.path)),
      ),
    );
  }
}
