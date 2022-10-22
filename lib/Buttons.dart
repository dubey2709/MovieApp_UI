import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  Buttons(this.name, this.color);
  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 87,
          height: 40,
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide.none),
              ),
            ),
            onPressed: () {},
            child: Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
