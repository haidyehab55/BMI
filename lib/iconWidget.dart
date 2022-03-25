import 'package:flutter/material.dart';

const TextStyle lable = TextStyle(
  fontSize: 12.0,
  color: Color(0xFF7C7C8C),
);

class IconWidget extends StatelessWidget {
  IconWidget({@required this.text, this.icon});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          size: 18.0,
        ),
        SizedBox(height: 10.0),
        Text(
          text,
          style: lable,
        ),
      ],
    );
  }
}
