import 'package:flutter/material.dart';

class Sem extends StatelessWidget {
 final String title;

  const Sem({
    Key key,this.title,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
           color: Colors.white70,
borderRadius:BorderRadius.circular(10)
                   ),
child: Text(title,
style:TextStyle(
  
  fontSize:19)),
    );
  }
}