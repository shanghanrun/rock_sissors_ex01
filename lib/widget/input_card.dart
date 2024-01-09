import 'package:flutter/material.dart';
import 'package:rock_sissors_ex01/const/input_type.dart';

class InputCard extends StatelessWidget {
  final InputType type;
  final VoidCallback? callback;

  const InputCard({
    required this.type,
    this.callback, // 없을 수도 있다.
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => callback?.call(),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(width: 8, color: Colors.grey),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Image.asset(type.path),
        ),
      ),
    );
  }
}
