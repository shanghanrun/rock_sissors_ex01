import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rock_sissors_ex01/const/input_type.dart';
import 'package:rock_sissors_ex01/model/card_model.dart';

class CpuInputCard extends StatelessWidget {
  const CpuInputCard({super.key});

  @override
  Widget build(BuildContext context) {
    var cpuInput = Provider.of<CardModel>(context).cpuInput;
    var isDone = Provider.of<CardModel>(context).isDone;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          border:
              Border.all(width: 8, color: isDone ? Colors.green : Colors.grey),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Image.asset(cpuInput.path),
      ),
    );
  }
}
