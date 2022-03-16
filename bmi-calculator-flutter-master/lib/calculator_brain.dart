
import 'dart:math';

import 'package:flutter/material.dart';

class BMICalculator {
  BMICalculator({@required this.height, @required this.weight});

  final height;
  final weight;

  double _bmi;

  String calculateBMI(){
    _bmi = weight / pow(height /100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }
    else if(_bmi > 18.5){
      return 'Normal';
    }
    else{
     return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'You have a higher than normal body weight, try to exercise more 🤗';
    }
    else if(_bmi > 18.5){
      return 'You have a normal body weight, good job! 👏🏻';
    }
    else{
      return 'You have a lower than normal body weight, you need to eat a bit more 🥙';
    }
  }
  }
