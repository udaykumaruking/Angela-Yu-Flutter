import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      elevation: 6.0,
    );
  }
}
