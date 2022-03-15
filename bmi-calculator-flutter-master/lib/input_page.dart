import 'dart:ffi';

import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'calculate_button.dart';
import 'roundButton_page.dart';


enum Gender {
   male,
  female
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                child: ReusableCard(colour: selectedGender == Gender.male ? kActiveCardColor : kInactiveCardColor,
                  cardChild: IconContent(icon: FontAwesomeIcons.mars,label: 'MALE',),
                  onPressed: (){
                  setState(() {
                    selectedGender = Gender.male;
                  });
                  },
                ),
              ),
              Expanded(
                  child: ReusableCard(colour: selectedGender == Gender.female ? kActiveCardColor : kInactiveCardColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE',),
                    onPressed: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
              ),
            ],
          ),
          ),
          Expanded(
            child: ReusableCard(colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Text('HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString() ,
                        style: kNumberLabelTextStyle,
                        ),
                      Text('cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderThumbShape(enabledThumbRadius: 30.0),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x1FEB1555),
                      inactiveTrackColor: Color(0xFF8D8E98),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue){
                          setState(() {
                            height = newValue.toInt();
                          });

                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
            children: [
              Expanded(
                child: ReusableCard(colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Text(weight.toString(),
                        style: kNumberLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(width: 10.0,),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('AGE',
                      style: kLabelTextStyle,
                    ),
                    Text(age.toString(),
                      style: kNumberLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPressed: (){
                            setState(() {
                              age--;
                            });
                          },
                        ),
                        SizedBox(width: 10.0,),
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: (){
                            setState(() {
                              age++;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                ),
              ),
            ],
          ),
          ),
          CalculateButton(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context){
                  return Result();
                },
                ),
              );
            },
            calculatorText: 'Calculate',
          ),
        ],
      ),
    );
  }
}








