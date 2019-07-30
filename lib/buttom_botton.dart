import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({@required this.onTap, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
//      onTap: () {
//          Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));
//      },
      child: Container(
        child: Center(
            child: Text(
          buttonTitle,
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: kWhiteColor),
        )),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
