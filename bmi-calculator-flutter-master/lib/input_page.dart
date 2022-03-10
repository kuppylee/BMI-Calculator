import 'package:flutter/material.dart';

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
                child: ReusableCard(),
              ),
              Expanded(
                  child: ReusableCard(),
              ),
            ],
          ),
          ),
          Expanded(
            child: ReusableCard(),
          ),
          Expanded(
            child: Row(
            children: [
              Expanded(
                child: ReusableCard(),
              ),
              Expanded(
                child: Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Color(0XFF1D1E33),
                    borderRadius: BorderRadius.circular(10.0)
                ),
              ),
              ),
            ],
          ),
          ),
        ],
      ),
    );
  }

  Widget boxContainerWidget(){
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Color(0XFF1D1E33),
          borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.all(15.0),
    decoration: BoxDecoration(
        color: Color(0XFF1D1E33),
        borderRadius: BorderRadius.circular(10.0)
    ),
              );
  }
}
