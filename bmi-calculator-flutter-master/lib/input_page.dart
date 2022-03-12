import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const double bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0XFF1D1E33);
const Color inactiveCardColor = Color(0XFF111328);
const Color bottomContainerColor = Color(0xFFEB1555);

enum Gender {
   male,
  female
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {


  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateCardColor (Gender selectedGender){
    // male gender was selected 
    if(selectedGender == Gender.male  && maleCardColor == inactiveCardColor){
        maleCardColor = activeCardColor;
      }else{
        maleCardColor = inactiveCardColor;
      }
     // Female gender was selected
     if(selectedGender == Gender.female && femaleCardColor == inactiveCardColor){
        femaleCardColor = activeCardColor;
      }else{
        femaleCardColor = inactiveCardColor;
      }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      updateCardColor(Gender.male);
                    });
                  },
                  child: ReusableCard(colour: maleCardColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.mars,label: 'MALE',),
                  ),
                ),
              ),
              Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateCardColor(Gender.female);
                      });
                    },
                    child: ReusableCard(colour: femaleCardColor,
                      cardChild: IconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE',),
                    ),
                  ),
              ),
            ],
          ),
          ),
          Expanded(
            child: ReusableCard(colour: activeCardColor,),
          ),
          Expanded(
            child: Row(
            children: [
              Expanded(
                child: ReusableCard(colour: activeCardColor,),
              ),
              Expanded(
                child: ReusableCard(colour: activeCardColor,),
              ),
            ],
          ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            height: bottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }

//   Widget boxContainerWidget(){
//     return Container(
//       margin: EdgeInsets.all(15.0),
//       decoration: BoxDecoration(
//           color: Color(0XFF1D1E33),
//           borderRadius: BorderRadius.circular(10.0)
//       ),
//     );
//   }
}



