import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {

  final void Function() onTap;
  final String buttonText;

  BottomButton({required this.onTap,required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(buttonText,style: KLargeButtonTextStyle,)),
        color: KBottomContainerColor,
        margin: EdgeInsets.only(top: 15.0),
        width: double.infinity,
        height: KBottomContainerHeight,
      ),
    );
  }
}