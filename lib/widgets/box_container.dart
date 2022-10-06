import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  BoxContainer({this.marginLeft=0, this.marginRight=0, this.marginTop=0, this.marginBottom=0, this.myWidget, this.clr, this.onPress });
  Color? clr;
  final double marginLeft;
  final double marginRight;
  final double marginTop;
  final double marginBottom;
  Widget? myWidget;
  final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.only(left:marginLeft, right: marginRight, top: marginTop, bottom: marginBottom),
        child:  myWidget,
      ),
    );
  }
}