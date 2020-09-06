import 'package:flutter/material.dart';
import 'package:heel/screen/THEME.dart';

class Memory extends StatelessWidget {
  const Memory({
    this.semester,
    this.place,
    this.event,
    this.imgpath,
    Key key,
  }) : super(key: key);
  final String semester;
  final String place;
  final String event;
  final String imgpath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  imgpath,
                  height: 200,
                  width: 800,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      semester,
                      style: bigstyle,
                    ),
                  ),
                  Text(
                    place,
                    style: smallstyle,
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  event,
                ),
              ),
            ],
          ),
          Positioned(
            right: 30,
            child: IconButton(
                icon: Icon(
                  Icons.favorite_sharp,
                  size: 55,
                  color: Colors.white,
                ),
                onPressed: null),
          ),
        ]),
      ),
    );
  }
}
