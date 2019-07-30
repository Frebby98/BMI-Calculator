import 'package:flutter/material.dart';

import 'buttom_botton.dart';
import 'constants.dart';
import 'reusable_card.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(15),
            child: Text(
              'YOUR RESULT',
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: kWhiteColor),
            ),
          )),
          Expanded(
              flex: 5,
              child: ReusableCard(
                  color: kActiveCardColor,
                  cardChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        resultText,
                        style: TextStyle(
                            fontSize: 22,
                            color: Color(0xff24d876),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        bmiResult,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 100,
                            color: kWhiteColor),
                      ),
                      Text(
                        interpretation,
                        style: TextStyle(fontSize: 22, color: kWhiteColor),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  onPress: null)),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
