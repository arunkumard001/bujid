import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      
                 leading: IconButton(onPressed:null,icon:Icon(Icons.menu),),
                 centerTitle: true,
                title:Text(title),
                
               );
  }
}
class CustomDrawer extends StatelessWidget {
  CustomDrawer({this.title1,this.subtitle});
  @override
  final String subtitle;
  final String title1;
  Widget build(BuildContext context) {
    
        return Drawer(
          child:ListTile(
            title:Text(title1,),
            subtitle: Text(subtitle),
            trailing:Container(
  padding:EdgeInsets.all(5),
  decoration:BoxDecoration(color:Colors.white,
border: Border.all(width: 1),
borderRadius:BorderRadius.circular(8.0),),
  child: IconButton(icon: Icon(Icons.backspace), onPressed: null),),
leading: CUstom_icon(),
    ),);
  }
}

class CUstom_icon extends StatelessWidget {
  IconData icons;

  const CUstom_icon({this.icons,Key key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
   
        return     Container(
        
          padding:EdgeInsets.all(2
        
          ),
        
          decoration:BoxDecoration(color:Colors.white10,
        
        border: Border.all(width: 1),
        
        borderRadius:BorderRadius.circular(5.0),),
        
          child: IconButton(icon: Icon(icons), onPressed: null));
  }
}