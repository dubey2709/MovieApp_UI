import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0.00, horizontal: 25.00),
      child: TextField(
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          suffixIcon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          hintText: ' Search movies',
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          filled: true,
          fillColor: Color(0xFF1C2230),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
