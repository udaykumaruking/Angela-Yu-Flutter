import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  color: Color(0xff8d8e98),
  fontSize: 18,
);

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, @required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
