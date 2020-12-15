import 'package:bmi_calculator/Components/buttom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'file:///D:/projects/bmi_calculator/lib/Components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {

  ResultScreen({@required this.bmi,@required this.result, @required this.interpolation});

  final bmi;
  final result;
  final interpolation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20.0, top: 10.0),
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kBMITextStyle.copyWith(fontSize: 90.0),
                  ),
                  Text(
                    interpolation,
                    style: kBodyTExtStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: "RE-CALCULATE"),
        ],
      )
    );
  }
}
