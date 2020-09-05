

import 'package:flutter/material.dart';

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
                        Sem(title:"semester8"),
                      
                    
                  
                     
                    ],
                  ),
                ),
              ),
        ],
      ),
    );
  }
}

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

class AppIcon extends StatelessWidget {
  const AppIcon({ Key key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu),
        Icon(Icons.search),
      ],

    );
  }
}