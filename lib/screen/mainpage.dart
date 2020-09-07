import 'package:flutter/material.dart';
import 'package:heel/screen/Memory.dart';

import 'package:heel/screen/appicon.dart';
import 'package:heel/screen/datamodel.dart';
import 'package:heel/screen/sem.dart';
import 'package:heel/screen/showalldetail.dart';
import 'package:heel/widgets.dart';

class Mainpage extends StatelessWidget {
  List<Datamodel> housedata = [
    Datamodel(
        semester: "SEMESTER1",
        place: "CALICUT BEACH",
        event: "travel",
        imgpath: "assets/img/1.jpg"),
    Datamodel(
      semester: "SEMESTER5",
      place: "COLLEGE CAMPUS",
      event: "DIKSH 2020",
      imgpath: "assets/img/3.jpg",
    ),
    Datamodel(
      semester: "SEMESTER1",
      place: "COLLAGE CANTEEN ",
      event: "FIRST YEAR ONAM",
      imgpath: "assets/img/2.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppIcon(),
              firsttitle("CUIET"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 22),
                child: secondtitle("EC Department"),
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Sem(
                        title: "semester1",
                      ),
                      Sem(title: "semester2"),
                      Sem(title: "semester3"),
                      Sem(title: "semester4"),
                      Sem(title: "semester5"),
                      Sem(title: "semester6"),
                      Sem(title: "semester7"),
                      Sem(title: "semester8"),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: housedata.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      onpressedevent(context, index);
                    },
                    child: Memory(
                      semester: housedata[index].semester,
                      place: housedata[index].place,
                      event: housedata[index].event,
                      imgpath: housedata[index].imgpath,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  void onpressedevent(context, index) {
    Map arugument1 = {
      "semester": housedata[index].semester,
      "place": housedata[index].place,
      "event": housedata[index].event,
      "imgpath": housedata[index].imgpath,
    };
    Navigator.of(context)
        .pushNamed(Showalldetail.routename, arguments: arugument1);
  }
}
