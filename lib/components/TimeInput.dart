import 'package:flutter/material.dart';
import 'package:pomodoro/components/RoundButton.dart';

class TimeInput extends StatelessWidget {
  final int timeValue;
  final String title;
  final void Function()? increment;
  final void Function()? decrement;

  const TimeInput({
    Key? key,
    required this.timeValue,
    required this.title,
    this.increment,
    this.decrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundButton(
              icon: Icons.arrow_downward,
              function: decrement,
            ),
            Text(
              '${timeValue.toString() + 'min'}',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            RoundButton(
              icon: Icons.arrow_upward,
              function: increment,
            )
          ],
        ),
      ],
    );
  }
}
