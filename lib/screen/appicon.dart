import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({ Key key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu),
        Icon(Icons.search),
      ],

    );
  }
}