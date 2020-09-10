import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomForm extends StatelessWidget {
  static const Form1 = "/CustomForm";
  GlobalKey<FormState> _form = GlobalKey<FormState>();
  Map <String,String>formdata = {
    "name of semester": null,
    "place": null,
    "event": null,
    "img path": null
  };
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Form(
          key: _form,
          child: Column(
            children: [
              TextFormField(
                onSaved: (val) {
                  formdata["name of semester"]=val;
                },
                decoration: InputDecoration(
                  hintText: "name of semester",
                ),
              ),
              TextFormField(
                onSaved: (val) {
                  formdata["val"]=val;
                },
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "place",
                ),
              ),
              TextFormField(
                onSaved: (val) {
                  formdata["event"]=val;
                },
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "event",
                ),
              ),
              TextFormField(
                onSaved: (val) {
                  formdata["img path"]=val;
                },
                decoration: InputDecoration(
                  hintText: "img path",
                ),
              ),
              RaisedButton(
          
                  onPressed: () {
                    _form.currentState.save();
                  },
                  child: Text('continue'))
            ],
          ),
        ),
      ),
    );
  }
}
