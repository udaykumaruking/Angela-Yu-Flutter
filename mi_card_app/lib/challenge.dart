import 'package:flutter/material.dart';

class Challenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100.0,
            color: Colors.red,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.yellow,
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.yellow[200],
              ),
            ],
          ),
          Container(
            width: 100.0,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
