import 'package:flutter/material.dart';

class Showalldetail extends StatelessWidget {
  static const routename = "/showdetail";
  @override
  Widget build(BuildContext context) {
    Map argu = ModalRoute.of(context).settings.arguments;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Stack(
          children: [
            Image.asset(argu["imgpath"]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.favorite_border,
                    size: 70,
                  )),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(argu["semester"]),
            Text(argu["place"]),
          ],
        ),
        Text(argu["event"])
      ]),
    ));
  }
}
