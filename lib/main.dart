import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rock_sissors_ex01/const/input_type.dart';
import 'package:rock_sissors_ex01/game/game_body.dart';
import 'package:rock_sissors_ex01/model/card_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CardModel(
          isDone: false, userInput: InputType.rock, cpuInput: InputType.rock),
      child: MaterialApp(
        title: '가위바위보',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: const Text('가위 바위 보 게임')),
          body: const GameBody(),
        ),
      ),
    );
  }
}
