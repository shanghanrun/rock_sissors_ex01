import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rock_sissors_ex01/const/input_type.dart';
import 'package:rock_sissors_ex01/model/card_model.dart';

class GameResult extends StatelessWidget {
  const GameResult({super.key});

  @override
  Widget build(BuildContext context) {
    var isDone = Provider.of<CardModel>(context).isDone;
    var cpuInput = Provider.of<CardModel>(context).cpuInput;
    var userInput = Provider.of<CardModel>(context).userInput;

    if (isDone) {
      return Center(
        child: Text(
          getResult(userInput, cpuInput),
          style: const TextStyle(fontSize: 40, color: Colors.blue),
        ),
      );
    }
    return const Center(
      child: Text('가위, 바위, 보 중 하나를 선택해 주세요.'),
    );
  }

  String getResult(InputType userInput, InputType cpuInput) {
    if (userInput == InputType.rock) {
      if (cpuInput == InputType.rock) {
        return '무승부';
      } else if (cpuInput == InputType.scissors) {
        return '유저 승';
      } else if (cpuInput == InputType.paper) {
        return '컴퓨터 승';
      }
    } else if (userInput == InputType.scissors) {
      if (cpuInput == InputType.rock) {
        return '컴퓨터 승';
      } else if (cpuInput == InputType.scissors) {
        return '무승부';
      } else if (cpuInput == InputType.paper) {
        return '유저 승';
      }
    } else {
      if (cpuInput == InputType.rock) {
        return '유저 승';
      } else if (cpuInput == InputType.scissors) {
        return '컴퓨터 승';
      } else if (cpuInput == InputType.paper) {
        return '무승부';
      }
    }
    return '무승부';
  }
}
