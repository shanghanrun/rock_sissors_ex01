import 'package:flutter/material.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  const GameResult({required this.isDone, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return const Center(
        child: Text('result'),
      );
    }
    return const Center(
      child: Text('가위, 바위, 보 중 하나를 선택해 주세요.'),
    );
  }
}
