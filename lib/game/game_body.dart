import 'dart:math';
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
  late InputType _userInput;
  late InputType cpuInput;

  void initCpuInput() {
    cpuInput = InputType.values[Random().nextInt(3)]; //[0] [1] [2]
  }

  @override
  void initState() {
    super.initState();
    isDone = false; // 게임이 진행되었는 지 여부
    _userInput = InputType.rock; // 초기화
    initCpuInput();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        !isDone
            ? Expanded(
                child: Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(width: 8, color: Colors.grey),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Center(
                      child: Text(
                        '?',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ),
              )
            : Expanded(
                child: CpuInput(
                    isDone: isDone, cpuInput: cpuInput, callback: setCpuInput),
              ),
        Expanded(
          child: GameResult(isDone: isDone),
        ),
        Expanded(
          child: UserInput(
              isDone: isDone, userInput: _userInput, callback: setUserInput),
        )
      ],
    );
  }

  void setUserInput(InputType userInput) {
    setState(() {
      isDone = true;
      _userInput = userInput;
      // 아무리 여러번을 눌러도 cpuInput 값이 동일값이라서 cpu화면은 변화되지 않는다.
      // cpu를 눌러서 콜백함수에 의해 cpuInput이 바뀌는 과정을 거쳐야 그후에 변화될 수 있다.
    });
  }

  void setCpuInput(InputType cpuInput) {
    if (isDone) {
      setState(() {
        this.cpuInput = InputType.values[Random().nextInt(3)];
        isDone = false; // 결과 이후에 사용자 선택안됨으로 다시 복귀
        // isDone=false로 만들면, 화면 재랜더링되면서 cpu_input화면도 물음표로 바뀐다.
      });
    } else {}
  }
}
