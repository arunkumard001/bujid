

import 'package:flutter/material.dart';

Row secondtitle() {
    return Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Text("ECE DEPARTMENT",
              style: TextStyle(fontSize:22,fontWeight: FontWeight.bold),
              ),
              Icon(Icons.more_vert),
            ],
          );
  }

  Text firsttitle() {
    return Text("CUIET",
        style: TextStyle(
          fontWeight:FontWeight.w600
        ),);
  }
  Row floatingaction() {
    return Row(children: [
          Icon(
            Icons.place,
            color: Colors.white,
          ),
          Text("map veiw", style: TextStyle(color: Colors.white)),
        ]);}