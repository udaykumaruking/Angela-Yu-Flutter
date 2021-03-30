import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(
          0xff1d1e33,
        ),
        borderRadius: BorderRadius.circular(
          15.0,
        ),
      ),
      child: cardChild,
    );
  }
}
