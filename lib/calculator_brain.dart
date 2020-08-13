import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a hight than a normal body weight. Excercise more to reduce the weight.';
    } else if (_bmi >= 18.5) {
      return 'You weight is normal. Keep it up.';
    } else {
      return 'You weight is below the normal weight. You should eat more to increase your weight.';
    }
  }
}
