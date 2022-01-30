import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../contents/reusable_card.dart';
import '../contents/bottom_button.dart';

class ResultsPage extends StatelessWidget {

  final String result;
  final String bmi;
  final String interpretation;

  ResultsPage({required this.bmi,required this.interpretation,required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body : Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results',
                style: KTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
                  colour: KActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        result.toUpperCase(),
                        style: KResultTextStyle,
                      ),
                      Text(
                        bmi,
                        style: KBmiTextStyle,
                      ),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: KTextDetailsTextStyle,
                      ),
                    ],
                  ),
                  onPress: (){}
              ),
          ),
          BottomButton(
              onTap: (){
                Navigator.pop(context);
              },
              buttonText: 'RECALCULATE',
          ),
        ],
      ),
    );
  }
}
