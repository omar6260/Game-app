import 'package:flutter/material.dart';
import 'text_style.dart';

class Prompt extends StatelessWidget {
  const Prompt({Key? key, required this.targetValue}) : super(key: key);

  final int targetValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'PUT THE BULLSEYS AS CLOSE YOU CAN TO',
          style: LabelTextStyle.bodyText1(context),
        ),
      ],
    );
  }
}
