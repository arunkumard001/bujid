import 'package:flutter/material.dart';
import 'package:heel/screen/form.dart';
import 'package:heel/screen/mainpage.dart';
import 'package:heel/screen/showalldetail.dart';
import 'package:heel/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Showalldetail.routename: (context) => Showalldetail(),
        CustomForm.form1: (context) => CustomForm(),
      },
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
      
        drawer: Drawer(
          child: ListView(
            children: [
              SizedBox(
                height: 100,
              ),
              ListTile(
                title: Text("CREATE A FORM"),
                leading: IconButton(
                    icon: Icon(Icons.forum_sharp),
                    onPressed: () {
                      Navigator.of(context).pushNamed(CustomForm.form1);
                      Navigator.of(context).pop();
                    }),
              ),
            ],
          ),
        ),
        floatingActionButton: Container(
          width: 100,
          height: 30,
          decoration: BoxDecoration(
              color: Color.fromRGBO(9, 9, 65, 1),
              borderRadius: BorderRadius.circular(30)),
          child: floatingaction("Map View"),
        ),
        body: Mainpage(),
      ),
    );
  }
}
