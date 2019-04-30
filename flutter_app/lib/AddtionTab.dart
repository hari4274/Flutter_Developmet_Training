import 'package:flutter/material.dart';

class AddtionTab extends StatefulWidget {
  @override
  _AddtionState createState() => _AddtionState();
}

class _AddtionState  extends State<AddtionTab>{
  double num1;
  double num2;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Container (
      child: Column(
        children: <Widget>[
          TextField(
            onChanged: (String value){
              num1=double.parse(value);
            },
          ),
          TextField(
            onChanged: (String value){
              num2=double.parse(value);
            },
          ),
          RaisedButton(
            child:Text("Add"),
            onPressed: () {
              setState(() {
                result = num1 + num2;
              });
            },
          ),
          Text("$result"),
        ],
      ),
    );
  }
  
}