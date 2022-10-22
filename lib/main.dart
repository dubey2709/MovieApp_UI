import 'dart:ui';
import 'cards.dart';
import 'package:flutter/material.dart';
import 'myWidget.dart';
import 'Search.dart';
import 'Buttons.dart';
import 'Damn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF121826),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                contentPadding: EdgeInsets.all(25),
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('images/me.jpeg'),
                ),
                title: myWidget(),
                trailing: Icon(
                  Icons.notifications_none,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              Search(),
              SizedBox(
                height: 15,
              ),
              Damn('Categories', 25),
              Container(
                padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Buttons('Action', Color(0xFF207298)),
                    Buttons('Romance', Color(0xFF282f39)),
                    Buttons('Horror', Color(0xFF282f39)),
                    Buttons('Comedy', Color(0xFF282f39)),
                    Buttons('Thriller', Color(0xFF282f39)),
                  ],
                ),
              ),
              Row(
                children: [
                  Damn('Now Showing', 20),
                  SizedBox(width: 165),
                  Text(
                    'See all',
                    style: TextStyle(color: Colors.white70),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white70,
                    size: 20,
                  )
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 270,
                padding: EdgeInsets.only(left: 25),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Cards('images/p1.webp', 'Chichhore'),
                    SizedBox(width: 15),
                    Cards('images/p6.jpg', 'Bhool Bhulaiya'),
                    SizedBox(width: 15),
                    Cards('images/p3.jpg', 'Parmanu'),
                    SizedBox(width: 15),
                    Cards('images/p4.jpg', 'Inception'),
                    SizedBox(width: 15),
                    Cards('images/p5.webp', 'Saaho'),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      color: Color(0xFF207298),
                      size: 25,
                    ),
                    Icon(
                      Icons.share,
                      color: Colors.blueGrey[300],
                      size: 25,
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.blueGrey[300],
                      size: 25,
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.blueGrey[300],
                      size: 25,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
