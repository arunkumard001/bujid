import 'package:flutter/material.dart';
import 'package:heel/screen/THEME.dart';
import 'Memory.dart';


class Showalldetail extends StatelessWidget {
  static const routename = "/showdetail";
 final GlobalKey _scaffoldkey = new GlobalKey();

  bool favitoricon = Customfavitoricon.favitoricon;
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
                  child: Icon(favitoricon ? Icons.favorite_border_rounded:
                    Icons.favorite_border,
                    color: favitoricon? Colors.white:Colors.red,
                    size: 70,
                  )),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(argu["semester"],style:bigstyle),
            Text(argu["place"],style: bigstyle,),
          ],
        ),
        Text(argu["event"],style: bigstyle,),
      ]),
      key: _scaffoldkey,
    ));
  }
}
