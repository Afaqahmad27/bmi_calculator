import 'dart:math';

class CalculateBmi{
  CalculateBmi({this.height,this.weight});
  final int? height;
  final int? weight;
  double? _bmi;

  String calculatBmi(){
    _bmi=weight!/pow(height!/100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi!>=25){
      return 'Overweight';
    }
    else if(_bmi!>18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi!>=25){
      return 'You have higher than normal body weight, try to reduce it by making a regular routine of exercises';
    }
    else if(_bmi!>18.5){
      return 'Great you have a normal body, maintain your fitness the way it is!';
    }
    else{
      return 'You have lower than average body weight, you can eat more to reach upto normal body weight that you needed now';
    }
  }

}