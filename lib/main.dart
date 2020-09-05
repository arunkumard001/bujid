import 'package:flutter/material.dart';
import 'package:heel/screen/body/custombody.dart';
import 'package:heel/screen/customappbar/customappbar.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue,
     visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: "BUJI ",),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
   final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
           
              drawer:CustomDrawer(title1: "hello world",subtitle: "tony",),
              body: CustomBody(),
      ),
    );}
  }