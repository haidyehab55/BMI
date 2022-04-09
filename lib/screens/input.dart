import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/iconWidget.dart';
import '../constants.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator/components/reusableContainer.dart';
import 'package:bmi_calculator/components/RoundIconButton.dart';
import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/screens/result_page.dart';

Gender gender;
int height = 160;
int weight = 60;
int age = 18;

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
  CalculatorBrain br;

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
                mainAxisAlignment: MainAxisAlignment.center,
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
                        height.toString(),
                        style: kNumStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabel,
                      )
                    ],
                  ),
                  SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTickMarkColor: kActiveColor,
                        thumbColor: Color(0xFFe83d66),
                        overlayColor: Color(0x35e83d66),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                          });
                        },
                      )),
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
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: kLabel,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumStyle,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
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
                  child: ReusableContainer(
                    colour: kContainersColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Age',
                          style: kLabel,
                        ),
                        Text(
                          age.toString(),
                          style: kNumStyle,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                            SizedBox(
                              width: 20.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          BottomButton(
            textButton: "Calculate",
            tap: () {
              br = CalculatorBrain(height: height, weight: weight);
              String bmi = br.calculateBMI();
              String result = br.getResult();
              String comment = br.getComment();

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                      bmiResult: bmi, resultText: result, commentText: comment),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
