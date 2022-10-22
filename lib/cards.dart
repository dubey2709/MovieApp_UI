import 'package:flutter/material.dart';
import 'dart:ui';

class Cards extends StatelessWidget {
  Cards(this.path, this.movien);
  final String path;
  final String movien;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        image: DecorationImage(image: AssetImage(path), fit: BoxFit.cover),
      ),
      alignment: Alignment.bottomCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.1)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 175,
          ),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  color: Colors.white.withOpacity(0.05),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        movien,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xFFfcbc05),
                            size: 12,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xFFfcbc05),
                            size: 12,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xFFfcbc05),
                            size: 12,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xFFfcbc05),
                            size: 12,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xFFfcbc05),
                            size: 12,
                          ),
                          SizedBox(width: 10.00),
                          Text(
                            '5.0',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
