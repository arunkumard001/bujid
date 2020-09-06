import 'package:flutter/material.dart';

import 'package:heel/screen/mainpage.dart';
import 'package:heel/widgets.dart';

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
      home: MyHomePage(
        title: "BUJI ",
      ),
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
        floatingActionButton: Container(
          width: 100,
          height: 30,
          decoration: BoxDecoration(
            color: Color.fromRGBO(9, 9, 65, 1),
          borderRadius: BorderRadius.circular(30)
          ),
          child: floatingaction(),
        ),
        body: Mainpage(),
      ),   
    );
  }

  
  }

