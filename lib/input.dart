import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const containersColor = Color(0xFF24263b);

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
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableContainer(
                    colour: containersColor,
                    cardChild: Column(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 10.0,
                        ),
                        SizedBox(
                          height: 10.0
                        ),
                        Text('Male', style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFF7C7C8C)
                        ),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableContainer(colour: containersColor),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableContainer(colour: containersColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableContainer(colour: containersColor),
                ),
                Expanded(
                  child: ReusableContainer(colour: containersColor),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity, // stretch
              color: Color(0xFFE83D66),
              margin: EdgeInsets.only(top: 8.0),
              height: 20.0,
            ),
          )
        ],
      ),
    );
  }
}

class ReusableContainer extends StatelessWidget {
  ReusableContainer({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(8.0),
      ),
      width: 80.0,
      height: 100.0,
    );
  }
}
