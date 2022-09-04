// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on _PomodoroStore, Store {
  late final _$minutesAtom =
      Atom(name: '_PomodoroStore.minutes', context: context);

  @override
  int get minutes {
    _$minutesAtom.reportRead();
    return super.minutes;
  }

  @override
  set minutes(int value) {
    _$minutesAtom.reportWrite(value, super.minutes, () {
      super.minutes = value;
    });
  }

  late final _$secondsAtom =
      Atom(name: '_PomodoroStore.seconds', context: context);

  @override
  int get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(int value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

  late final _$workingTimeAtom =
      Atom(name: '_PomodoroStore.workingTime', context: context);

  @override
  int get workingTime {
    _$workingTimeAtom.reportRead();
    return super.workingTime;
  }

  @override
  set workingTime(int value) {
    _$workingTimeAtom.reportWrite(value, super.workingTime, () {
      super.workingTime = value;
    });
  }

  late final _$restingTimeAtom =
      Atom(name: '_PomodoroStore.restingTime', context: context);

  @override
  int get restingTime {
    _$restingTimeAtom.reportRead();
    return super.restingTime;
  }

  @override
  set restingTime(int value) {
    _$restingTimeAtom.reportWrite(value, super.restingTime, () {
      super.restingTime = value;
    });
  }

  late final _$hasInitiateAtom =
      Atom(name: '_PomodoroStore.hasInitiate', context: context);

  @override
  bool get hasInitiate {
    _$hasInitiateAtom.reportRead();
    return super.hasInitiate;
  }

  @override
  set hasInitiate(bool value) {
    _$hasInitiateAtom.reportWrite(value, super.hasInitiate, () {
      super.hasInitiate = value;
    });
  }

  late final _$intervalTypeAtom =
      Atom(name: '_PomodoroStore.intervalType', context: context);

  @override
  IntervalType get intervalType {
    _$intervalTypeAtom.reportRead();
    return super.intervalType;
  }

  @override
  set intervalType(IntervalType value) {
    _$intervalTypeAtom.reportWrite(value, super.intervalType, () {
      super.intervalType = value;
    });
  }

  late final _$_PomodoroStoreActionController =
      ActionController(name: '_PomodoroStore', context: context);

  @override
  void init() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.init');
    try {
      return super.init();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stop() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.stop');
    try {
      return super.stop();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void restart() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.restart');
    try {
      return super.restart();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increaseWorkingTime() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.increaseWorkingTime');
    try {
      return super.increaseWorkingTime();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decreaseWorkingTime() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decreaseWorkingTime');
    try {
      return super.decreaseWorkingTime();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increaseRestingTime() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.increaseRestingTime');
    try {
      return super.increaseRestingTime();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decreaseRestingTime() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decreaseRestingTime');
    try {
      return super.decreaseRestingTime();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
minutes: ${minutes},
seconds: ${seconds},
workingTime: ${workingTime},
restingTime: ${restingTime},
hasInitiate: ${hasInitiate},
intervalType: ${intervalType}
    ''';
  }
}
