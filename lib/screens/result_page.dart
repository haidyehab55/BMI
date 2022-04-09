import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusableContainer.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.commentText,
  });

  final String bmiResult;
  final String resultText;
  final String commentText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result is',
                style: kResultHeading,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableContainer(
              colour: kActiveColor,
              cardChild: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: kResultText,
                    ),
                    Text(
                      bmiResult,
                      style: kNumStyle,
                    ),
                    Text(
                      commentText,
                      style: kCommentText,
                      ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            textButton: "Recalculate",
            tap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
