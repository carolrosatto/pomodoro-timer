import 'dart:async';
import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum IntervalType { rest, work }

abstract class _PomodoroStore with Store {
  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int workingTime = 2;

  @observable
  int restingTime = 1;

  @observable
  bool hasInitiate = false;

  @observable
  IntervalType intervalType = IntervalType.work;

  Timer? stopwatch;

  @action
  void init() {
    hasInitiate = true;
    stopwatch = Timer.periodic(Duration(seconds: 1), (timer) {
      if (minutes == 0 && seconds == 0) {
        _changeIntervalType();
      } else if (seconds == 0) {
        seconds = 59;
        minutes--;
      } else {
        seconds--;
      }
    });
  }

  @action
  void stop() {
    hasInitiate = false;
    stopwatch?.cancel();
  }

  @action
  void restart() {
    stop();
    minutes = isWorking() ? workingTime : restingTime;
    seconds = 0;
  }

  @action
  void increaseWorkingTime() {
    workingTime++;
    if (isWorking()) {
      restart();
    }
  }

  @action
  void decreaseWorkingTime() {
    if (workingTime > 1) {
      workingTime--;
      if (isWorking()) {
        restart();
      }
    }
  }

  @action
  void increaseRestingTime() {
    restingTime++;
    if (isResting()) {
      restart();
    }
  }

  @action
  void decreaseRestingTime() {
    if (restingTime > 1) {
      restingTime--;
      if (isResting()) {
        restart();
      }
    }
  }

  bool isWorking() {
    return intervalType == IntervalType.work;
  }

  bool isResting() {
    return intervalType == IntervalType.rest;
  }

  void _changeIntervalType() {
    if (isWorking()) {
      intervalType = IntervalType.rest;
      minutes = restingTime;
    } else {
      intervalType = IntervalType.work;
      minutes = workingTime;
    }
    seconds = 0;
  }
}
