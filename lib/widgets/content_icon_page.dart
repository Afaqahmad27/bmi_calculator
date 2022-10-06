import 'package:flutter/material.dart';



class ContentIcon extends StatelessWidget {
  ContentIcon({ this.chooseIcon, this.labelIcon,Key? key }) : super(key: key);
  final IconData? chooseIcon;
  final String? labelIcon;

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(chooseIcon, size: 80,),
        SizedBox(height: size.height*0.02,),
        Text(labelIcon!,
          style: TextStyle(
              fontWeight: FontWeight.w500,
            fontSize: 16
          ),
        ),
      ],
    );
  }
}
