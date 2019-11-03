import 'package:flutter/material.dart';

class CustomButtomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          IconButton(icon: Icon(Icons.home, size: 30,), onPressed: () {},),
          IconButton(icon: Icon(Icons.search, size: 30,), onPressed: () {},),
          IconButton(icon: Icon(Icons.camera_alt, size: 30,), onPressed: () {},),
          IconButton(icon: Icon(Icons.favorite_border, size: 30,), onPressed: () {},),
          IconButton(icon: Icon(Icons.person_outline, size: 30,), onPressed: () {},)
        ],),
      ),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 5, // has the effect of softening the shadow
            spreadRadius: 5.0, // has the effect of extending the shadow
            offset: Offset(
              10.0, // horizontal, move right 10
              10.0, // vertical, move down 10
            ),
          )
        ],
      ),
    );
  }
}
