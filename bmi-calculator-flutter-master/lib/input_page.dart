import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 80.0;
const Color reusableCardColor = Color(0XFF1D1E33);
const Color bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

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
                child: ReusableCard(colour: reusableCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.mars,
                        size: 80.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text('MALE',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF8D8E98),
                        )
                      ),

                    ],
                  ),
                ),
              ),
              Expanded(
                  child: ReusableCard(colour: reusableCardColor,),
              ),
            ],
          ),
          ),
          Expanded(
            child: ReusableCard(colour: reusableCardColor,),
          ),
          Expanded(
            child: Row(
            children: [
              Expanded(
                child: ReusableCard(colour: reusableCardColor,),
              ),
              Expanded(
                child: ReusableCard(colour: reusableCardColor,),
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

class ReusableCard extends StatelessWidget {
     final Color colour;
     final Widget cardChild;
    ReusableCard({ @required this.colour, this.cardChild
    });
    @override

  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
    margin: EdgeInsets.all(15.0),
    decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0)
    ),
              );
  }
}
