import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconWidget.dart';
import 'reusableContainer.dart';

const containersColor = Color(0xFF24263b);
Color inactiveColor = Color(0xFF24263B);
Color activeColor = Color(0xFF353538);
Gender gender;

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCard = inactiveColor;
  Color femaleCard = inactiveColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                       gender = Gender.male;
                      });
                    },
                    child: ReusableContainer(
                      colour: gender == Gender.male? activeColor: inactiveColor,
                      cardChild: IconWidget(
                        text: 'Male',
                        icon: FontAwesomeIcons.male,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    child: ReusableContainer(
                      colour: gender == Gender.female ? activeColor: inactiveColor ,
                      cardChild: IconWidget(
                        text: 'Female',
                        icon: FontAwesomeIcons.female,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableContainer(
              colour: containersColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableContainer(
                    colour: containersColor,
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    colour: containersColor,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity, // stretch
              color: Color(0xFFE83D66),
              margin: EdgeInsets.only(top: 8.0),
            ),
          )
        ],
      ),
    );
  }
}