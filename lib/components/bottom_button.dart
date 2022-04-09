import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.textButton, this.tap});

  final String textButton;
  final Function tap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        width: double.infinity, // stretch
        height: 100.0,
        color: Color(0xFFE83D66),
        margin: EdgeInsets.only(top: 2.0),
        child: Center(
          child: Text(
            textButton,
            style: kLargeButton,
          ),
        ),
      ),
    );
  }
}
