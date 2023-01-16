import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPresssed;
  MyButton({
    super.key,
    required this.text,
    required this.onPresssed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPresssed,
      child: Text(text),
      color: Theme.of(context).primaryColor,
    );
  }
}
