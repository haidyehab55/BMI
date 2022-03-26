import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconWidget.dart';
import 'reusableContainer.dart';
import 'constants.dart';

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
  Color maleCard = kInactiveColor;
  Color femaleCard = kInactiveColor;

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
                  child: ReusableContainer(
                    onPress: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    colour:
                        gender == Gender.male ? kActiveColor : kInactiveColor,
                    cardChild: IconWidget(
                      text: 'Male',
                      icon: FontAwesomeIcons.male,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    onPress: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    colour:
                        gender == Gender.female ? kActiveColor : kInactiveColor,
                    cardChild: IconWidget(
                      text: 'Female',
                      icon: FontAwesomeIcons.female,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableContainer(
              colour: kContainersColor,
              cardChild: Column(
                children: <Widget>[
                  Text(
                    'Height',
                    style: kLabel,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '180',
                        style: kNumStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabel,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableContainer(
                    colour: kContainersColor,
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    colour: kContainersColor,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity, // stretch
              color: Color(0xFFE83D66),
              margin: EdgeInsets.only(top: 2.0),
            ),
          )
        ],
      ),
    );
  }
}
