import 'package:flutter/material.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class RoundButton extends StatelessWidget {
  final IconData icon;
  final void Function()? function;
  const RoundButton({
    Key? key,
    required this.icon,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return ElevatedButton(
      onPressed: function,
      child: Icon(
        icon,
        color: Colors.white,
      ),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(15),
        primary: store.isWorking() ? Colors.deepPurple : Colors.green[300],
      ),
    );
  }
}
