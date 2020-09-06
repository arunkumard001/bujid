import 'package:flutter/material.dart';
import 'package:heel/screen/Memory.dart';

import 'package:heel/screen/appicon.dart';
import 'package:heel/screen/sem.dart';
import 'package:heel/widgets.dart';

class Mainpage extends StatelessWidget {
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
              
          firsttitle(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 22),
                child:  secondtitle(),
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
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  GestureDetector(
                    onTap:onpressedevent,
                                        child: Memory(
                                          semester: "SEMESTER1",
                                          place: "COLLAGE CANTEEN ",
                                          event: "FIRST YEAR ONAM",
                                          imgpath: "assets/img/2.jpg",
                                        ),
                                      ),
                                      Memory(
                                          semester: "SEMESTER1",
                                          place: "CALICUT BEACH",
                                          event: "travel",
                                          imgpath: "assets/img/1.jpg"),
                                      Memory(
                                        semester: "SEMESTER5",
                                        place: "COLLEGE CAMPUS",
                                        event: "DIKSH 2020",
                                        imgpath: "assets/img/3.jpg",
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }
                    
                    
                      
                      void onpressedevent() {
                        print(
                          "hello"
                        );
  }
}


















