import 'package:flutter/material.dart';

Row secondtitle(String department) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        department,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      Icon(Icons.more_vert),
    ],
  );
}

Text firsttitle(String college) {
  return Text(
    college,
    style: TextStyle(fontWeight: FontWeight.w600),
  );
}

Row floatingaction(String title) {
  return Row(children: [
    Icon(
      Icons.place,
      color: Colors.white,
    ),
    Text(title, style: TextStyle(color: Colors.white)),
  ]);
}
