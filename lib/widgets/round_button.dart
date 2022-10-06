import 'package:flutter/material.dart';

class RoundIcon extends StatelessWidget {
  RoundIcon({Key? key,required this.onPress, required this.iconData,required this.clr}) : super(key: key);
  final IconData iconData;
  final Color clr;
  final void Function() onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(iconData,color: Colors.white,),
      elevation: 2.0,
      constraints: BoxConstraints.tightFor(
        height:45,
        width: 45,
      ),
      shape: CircleBorder(),
      fillColor: clr,
    );
  }
}
