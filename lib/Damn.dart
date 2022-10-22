import 'package:flutter/material.dart';

class Damn extends StatelessWidget {
  Damn(this.text, this.size);
  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 25,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: size, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
