

import 'package:flutter/material.dart';
import 'package:heel/screen/THEME.dart';
import 'package:heel/screen/appicon.dart';
import 'package:heel/screen/sem.dart';

class Mainpage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppIcon(),

          Text("CUIET",
          style: TextStyle(
            fontWeight:FontWeight.w600
          ),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 22),
            child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Text("ECE DEPARTMENT",
                style: TextStyle(fontSize:22,fontWeight: FontWeight.bold),
                ),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                  
                    scrollDirection:Axis.horizontal,
                    children: [
                      Sem(title:"semester1" ,),
                      Sem(title:"semester2"),
                       Sem(title:"semester3" ), 
                       Sem(title:"semester4"), 
                       Sem(title:"semester5"), 
                       Sem(title:"semester6"),
                        Sem(title:"semester7"), 
                        Sem(title:"semester8"),],
                  ),
                ),
              ), 
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
children: [
  ClipRRect(
    borderRadius: BorderRadius.circular(30),
    child: Image.asset("assets/image/1.jpg")),
    Padding(
      padding: const EdgeInsets.symmetric(vertical:8.0),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.start,
        children:[
          
          Text("Semester1",style:bigstyle,),
  Text("Calicut beach" ,style:smallstyle,),
        ]
      ),
      
    ),
    Text("BUJI"),
    
    ],),
              
              ],
      ),
    );
  }
}



