import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/StopWatchButton.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Stopwatch extends StatelessWidget {
  const Stopwatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(
      builder: (_) => Container(
        color: store.isWorking() ? Colors.deepPurple : Colors.green[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              store.isWorking() ? "Hora de trabalhar" : "Hora de descansar",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '${store.minutes.toString().padLeft(2, '0')}:${store.seconds.toString().padLeft(2, '0')}',
              style: TextStyle(
                fontSize: 80,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!store.hasInitiate)
                  StopwatchButton(
                    onClick: store.init,
                    icon: Icons.play_arrow,
                    text: 'Iniciar',
                  ),
                if (store.hasInitiate)
                  StopwatchButton(
                    onClick: store.stop,
                    icon: Icons.stop,
                    text: 'Parar',
                  ),
                StopwatchButton(
                  onClick: store.restart,
                  icon: Icons.refresh,
                  text: 'Reiniciar',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
