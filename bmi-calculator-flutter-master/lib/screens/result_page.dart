import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/calculate_button.dart';
class Result extends StatelessWidget {
  Result({@required this.bmiResult, @required this.resultText, @required this.interpretation});

final bmiResult;
final resultText;
final interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText,
                      style: kResultTextStyle,
                  ),
                  Text(bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(interpretation,
                    textAlign: TextAlign.center,
                    style: kMessageTextStyle,
                  ),
                ],
              ),
            ),
          ),
          CalculateButton(
              onTap: (){
                Navigator.pop(context);
              },
              calculatorText: 'RE-CALCULATE')

        ],
      ),
    );
  }
}
