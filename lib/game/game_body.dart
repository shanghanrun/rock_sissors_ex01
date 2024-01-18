import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rock_sissors_ex01/model/card_model.dart';
import 'package:rock_sissors_ex01/widget/cpu_input.dart';
import 'package:rock_sissors_ex01/widget/game_result.dart';
import 'package:rock_sissors_ex01/widget/user_input.dart';

class GameBody extends StatelessWidget {
  const GameBody({super.key});

  @override
  Widget build(BuildContext context) {
    var isDone = Provider.of<CardModel>(context).isDone;

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
            : const Expanded(
                child: CpuInput(),
              ),
        const Expanded(
          child: GameResult(),
        ),
        const Expanded(
          child: UserInput(),
        )
      ],
    );
  }
}
