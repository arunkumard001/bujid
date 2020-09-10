import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({ Key key, this.ontap}) : super(key: key);
 final Function ontap;
  @override
  Widget build(BuildContext context) {
 return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: ontap,
          child: Icon(Icons.menu)),
        Icon(Icons.search),
      ],

    );
  }
}