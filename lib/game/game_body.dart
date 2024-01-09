import 'package:flutter/material.dart';
import 'package:rock_sissors_ex01/const/input_type.dart';
import 'package:rock_sissors_ex01/widget/cpu_input.dart';
import 'package:rock_sissors_ex01/widget/game_result.dart';
import 'package:rock_sissors_ex01/widget/user_input.dart';

class GameBody extends StatefulWidget {
  const GameBody({super.key});

  @override
  State<GameBody> createState() => _GameBody();
}

class _GameBody extends State<GameBody> {
  late bool isDone;
  late InputType? userInput;

  @override
  void initState() {
    super.initState();
    isDone = false; // 게임이 진행되었는 지 여부
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CpuInput(isDone: isDone),
        ),
        Expanded(
          child: GameResult(isDone: isDone),
        ),
        Expanded(
          child: UserInput(isDone: isDone),
        )
      ],
    );
  }

  void setUserInput(InputType userInput) {
    setState(() {
      userInput = userInput;
    });
  }
}
