

import 'package:flutter/material.dart';

const inActiveLightColor=Color(0xFFD9C587);
const inActiveDarkColor=Color(0xF7262626);
const activeLightColor= Color(0xFFE8CC73);
const activeDarkColor=Color(0xF723272B);

Gender? myGender;

enum Gender{
  male,
  female
}

Color activeColor(bool check){
  Color active=check ?  activeLightColor:activeDarkColor;
  return active;
}
Color inActiveColor(bool check){
  var inActive=check? inActiveLightColor: inActiveDarkColor;
  return inActive;
}

// void updateColor(Gender selectedGender){
//   if(selectedGender==Gender.male){
//     if(maleLightContainer==inActiveLightColor || maleDarkContainer==inActiveDarkColor){
//       maleLightContainer=activeLightColor;
//       femaleLightContainer=inActiveLightColor;
//       maleDarkContainer=activeDarkColor;
//       femaleDarkContainer=inActiveDarkColor;
//     }
//     else{
//       maleLightContainer=inActiveLightColor;
//       maleDarkContainer=inActiveDarkColor;
//     }
//   }
//   if(selectedGender==Gender.female){
//     if(femaleLightContainer==inActiveLightColor || femaleDarkContainer==inActiveDarkColor){
//       femaleLightContainer=activeLightColor;
//       maleLightContainer=inActiveLightColor;
//       femaleDarkContainer=activeDarkColor;
//       maleDarkContainer=inActiveDarkColor;
//     }
//     else{
//       femaleLightContainer=inActiveLightColor;
//       femaleDarkContainer=inActiveDarkColor;
//     }
//   }
// }