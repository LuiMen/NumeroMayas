import 'dart:math' as math;

import 'package:flutter/material.dart';

enum MayanNumbers { zero, one, five }

const Map<MayanNumbers, int> mayanNumbersValues = {
  MayanNumbers.zero: 0,
  MayanNumbers.one: 1,
  MayanNumbers.five: 5,
};

class MayanNumber {
  MayanNumber({@required this.number});
  final int number;

  @override
  String toString() {
    return '$number';
  }

  List<int> getLevels() {
    var arabicNumber = number;
    final levels = <int>[];
    var _currentLevel = 0;
    var highestLevelFound = false;

    while (!highestLevelFound) {
      if (arabicNumber < math.pow(20, _currentLevel + 1)) {
        highestLevelFound = true;
        final currentLevelValue = arabicNumber ~/ math.pow(20, _currentLevel);
        levels.add(currentLevelValue);
        arabicNumber = (arabicNumber % math.pow(20, _currentLevel)).toInt();
      }
      _currentLevel++;
    }

    var i = _currentLevel - 2;
    while (i >= 0) {
      var currentLevelValue = 0;
      if (arabicNumber != 0) {
        currentLevelValue = arabicNumber ~/ math.pow(20, i);
        arabicNumber = (arabicNumber % math.pow(20, i)).toInt();
      }
      levels.add(currentLevelValue);
      i--;
    }
    return levels;
  }

  double getDecimalPartFromNumber(double number) {
    print('---$number');
    final numberString = number.toString();
    if (numberString.contains('.')) {
      return double.parse(
          '0.${numberString.substring(numberString.indexOf(".") + 1).trim()}');
    }
    return 0;
  }

  Map<MayanNumbers, int> getMayanRepresentation(int arabicNumber) {
    final map = <MayanNumbers, int>{MayanNumbers.one: 0, MayanNumbers.five: 0};
    map[MayanNumbers.five] =
        arabicNumber ~/ mayanNumbersValues[MayanNumbers.five];
    arabicNumber -=
        map[MayanNumbers.five] * mayanNumbersValues[MayanNumbers.five];
    map[MayanNumbers.one] =
        arabicNumber ~/ mayanNumbersValues[MayanNumbers.one];
    return map;
  }
}
