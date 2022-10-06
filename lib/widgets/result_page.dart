import 'package:bmi_calculator/widgets/box_container.dart';
import 'package:flutter/material.dart';

import '../theme/color_method.dart';
import '../theme/theme_constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult,required this.resultText,required this.interpretation, required this.gender, required this.age,Key? key}) : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interpretation;
  final String gender;
  final int age;

  @override
  Widget build(BuildContext context) {
    bool toCheck = Theme.of(context).brightness == Brightness.light;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Result',),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(child: Center(child: Text('Your Result',style: toCheck
                ? kBoldLight.copyWith(fontSize: 30)
                : kBoldDark.copyWith(fontSize: 30),))),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: BoxContainer(
                  clr: toCheck ? inActiveLightColor : inActiveDarkColor,
                  myWidget: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text('Gender:'),
                                Text(' $gender', style: toCheck
                                    ? kBoldLight.copyWith(fontSize: 18)
                                    : kBoldDark.copyWith(fontSize: 18),),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text('Age:'),
                                Text(' $age', style: toCheck
                                    ? kBoldLight.copyWith(fontSize: 18)
                                    : kBoldDark.copyWith(fontSize: 18),),
                              ],
                            ),
                          ],
                        ),
                        Text(resultText.toUpperCase()),
                        Text(bmiResult,style: toCheck
                            ? kBoldLight.copyWith(fontSize: 45)
                            : kBoldDark.copyWith(fontSize: 45),),
                        Text(interpretation,textAlign: TextAlign.center,)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                color: toCheck?Color(0xFFEFBE24):Color(0xF7003ACB),
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.09,
                alignment: Alignment.center,
                child: Text('ReCalculate',style: toCheck?kLabelStyleLight.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff000000)
                ):kLabelStyleDark.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffffffff)
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
