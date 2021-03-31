import 'package:flutter/material.dart';
import 'constants.dart';

// class BottomButton extends StatelessWidget {
//   BottomButton({@required this.buttonTitle, @required this.onTap});
//   final String buttonTitle;
//   final Function onTap;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap(),
//       child: Container(
//         color: kBottomContainerColour,
//         margin: EdgeInsets.only(
//           top: 10.0,
//         ),
//         width: double.infinity,
//         child: Center(
//           child: Text(
//             buttonTitle,
//             style: kLargeButtonTextStyle,
//           ),
//         ),
//         padding: EdgeInsets.only(bottom: 10.0),
//         height: kBottomContainerHeight,
//       ),
//     );
//   }
// }

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
