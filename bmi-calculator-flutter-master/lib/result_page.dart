import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'calculate_button.dart';
class Result extends StatelessWidget {


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
              child: Text('YOUR RESULT',
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
                  Text('NORMAL',
                      style: kResultTextStyle,
                  ),
                  Text('16.7',
                    style: kBMITextStyle,
                  ),
                  Text('Your BMI is low, you need to eat more',
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
