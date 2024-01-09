import 'package:flutter/material.dart';
import 'package:rock_sissors_ex01/game/game_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '가위바위보',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('가위 바위 보 게임')),
        body: const GameBody(),
      ),
    );
  }
}
