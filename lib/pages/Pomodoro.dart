import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/Stopwatch.dart';
import 'package:pomodoro/components/TimeInput.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Stopwatch()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TimeInput(
                    timeValue: store.workingTime,
                    title: "Trabalho",
                    increment: store.hasInitiate && store.isWorking()
                        ? null
                        : store.increaseWorkingTime,
                    decrement: store.hasInitiate && store.isWorking()
                        ? null
                        : store.decreaseWorkingTime,
                  ),
                  TimeInput(
                    timeValue: store.restingTime,
                    title: "Descanso",
                    increment: store.hasInitiate && store.isResting()
                        ? null
                        : store.increaseRestingTime,
                    decrement: store.hasInitiate && store.isResting()
                        ? null
                        : store.decreaseRestingTime,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
