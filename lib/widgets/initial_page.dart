import 'package:bmi_calculator/theme/theme_constants.dart';
import 'package:bmi_calculator/widgets/calculator_class.dart';
import 'package:bmi_calculator/widgets/result_page.dart';
import 'package:bmi_calculator/widgets/round_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'box_container.dart';
import 'content_icon_page.dart';
import 'package:bmi_calculator/theme/color_method.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}


class _MainScreenState extends State<MainScreen> {

  String genderText(String gender){
    myGender==Gender.male? gender='Male' : gender='Female';
    return gender;
  }

  int sliderHeight = 180;
  int weight=60;
  int age=18;

  @override
  Widget build(BuildContext context) {
    int ageText=age;
    bool toCheck = Theme.of(context).brightness == Brightness.light;
    String text=toCheck? genderText('male'): genderText('female');
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
      Expanded(
        child: Row(
          children: [
            Expanded(
              child: BoxContainer(
                onPress: () {
                  setState(() {
                    myGender = Gender.male;
                    genderText('Male');
                  });
                },
                clr: myGender == Gender.male
                    ? activeColor(toCheck)
                    : inActiveColor(toCheck),
                marginLeft: 10,
                marginTop: 10,
                marginRight: 5,
                myWidget: ContentIcon(
                  chooseIcon: FontAwesomeIcons.mars,
                  labelIcon: 'Male',
                ),
              ),
            ),
            Expanded(
              child: BoxContainer(
                onPress: () {
                  setState(() {
                    myGender = Gender.female;
                    genderText('Female');
                  });
                },
                clr: myGender == Gender.female
                    ? activeColor(toCheck)
                    : inActiveColor(toCheck),
                marginLeft: 5,
                marginRight: 10,
                marginTop: 10,
                myWidget: ContentIcon(
                  chooseIcon: FontAwesomeIcons.venus,
                  labelIcon: 'Female',
                ),
              ),
            ),
          ],
        ),
      ),
      Expanded(
          child: BoxContainer(
        clr: toCheck ? inActiveLightColor : inActiveDarkColor,
        marginLeft: 10,
        marginRight: 10,
        marginTop: 10,
        marginBottom: 10,
        myWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "HEIGHT",
              style: toCheck ? kLabelStyleLight : kLabelStyleDark,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  sliderHeight.toString(),
                  style: toCheck ? kBoldLight : kBoldDark,
                ),
                Text(
                  'cm',
                  style: toCheck ? kLabelStyleLight : kLabelStyleDark,
                ),
              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
              ),
              child: Slider(
                  min: 120.0,
                  max: 220.0,
                  value: sliderHeight.toDouble(),
                  onChanged: (double newValue) {
                    setState(() {
                      sliderHeight = newValue.round();
                    });
                  }),
            )
          ],
        ),
      )),
      Expanded(
        child: Row(
          children: [
            Expanded(
              child: BoxContainer(
                clr: toCheck ? inActiveLightColor : inActiveDarkColor,
                marginLeft: 10,
                marginRight: 5,
                marginBottom: 10,
                myWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WEIGHT',
                      style: toCheck ? kLabelStyleLight : kLabelStyleDark,
                    ),
                    Text(
                      weight.toString(),
                      style: toCheck
                          ? kBoldLight.copyWith(fontSize: 40)
                          : kBoldDark.copyWith(fontSize: 40),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIcon(
                            onPress: () {
                              setState(() {
                                if(weight<1){
                                  weight=60;
                                }else {
                                  weight--;
                                }
                              });
                            },
                            iconData: FontAwesomeIcons.minus,
                            clr: toCheck
                                ? Color(0x400E0D0D)
                                : Color(0x40a3a3a3)),
                        SizedBox(width: 4,),
                        RoundIcon(
                            onPress: () {
                              setState(() {
                                weight++;
                              });
                            },
                            iconData: FontAwesomeIcons.plus,
                            clr: toCheck
                                ? Color(0x500E0D0D)
                                : Color(0x50a3a3a3)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: BoxContainer(
                clr: toCheck ? inActiveLightColor : inActiveDarkColor,
                marginLeft: 5,
                marginRight: 10,
                marginBottom: 10,
                myWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AGE',
                      style: toCheck ? kLabelStyleLight : kLabelStyleDark,
                    ),
                    Text(
                      age.toString(),
                      style: toCheck
                          ? kBoldLight.copyWith(fontSize: 40)
                          : kBoldDark.copyWith(fontSize: 40),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIcon(
                            onPress: () {
                              setState(() {
                                if(age<1){
                                  age=18;
                                }else {
                                  age--;
                                }
                              });
                            },
                            iconData: FontAwesomeIcons.minus,
                            clr: toCheck
                                ? Color(0x400E0D0D)
                                : Color(0x40a3a3a3)),
                        SizedBox(width: 4,),
                        RoundIcon(
                            onPress: () {
                              setState(() {
                                age++;
                              });
                            },
                            iconData: FontAwesomeIcons.plus,
                            clr: toCheck
                                ? Color(0x400E0D0D)
                                : Color(0x40a3a3a3)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      GestureDetector(
        onTap: (){
          CalculateBmi calc=CalculateBmi(height: sliderHeight, weight: weight);

          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ResultPage(bmiResult: calc.calculatBmi(), resultText: calc.getResult(), interpretation: calc.getInterpretation(), gender: text, age: ageText,)));
        },
        child: Container(
          color: toCheck?Color(0xFFEFBE24):Color(0xF7003ACB),
          width: double.infinity,
          height: MediaQuery.of(context).size.height*0.09,
          alignment: Alignment.center,
          child: Text('Calculate',style: toCheck?kLabelStyleLight.copyWith(
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
    ]);
  }
}
