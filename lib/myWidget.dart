import 'package:flutter/material.dart';

class myWidget extends StatelessWidget {
  const myWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        Row(
          children: [
            Text(
              'Hello',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w200,
                color: Colors.white,
                fontFamily: 'Comfortaa',
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Pranjal,',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontFamily: 'Comfortaa'),
            ),
          ],
        ),
        SizedBox(
          height: 1,
        ),
        Text(
          'What movie are you looking today? 🙂',
          style: TextStyle(color: Colors.grey, fontSize: 12.00),
        ),
      ],
    );
  }
}
