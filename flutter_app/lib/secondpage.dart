import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  String str = "";

  SecondPage({Key key, this.str}): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
			appBar: AppBar(
				title: Text(str),
			),
			body: Center(
        child: RaisedButton(
          child: Text("Go Back"),
          onPressed: (){
            Navigator.pop(context, "Welcome Back " + this.str.toUpperCase());
          },
        ),
      ),
		);
  } 
}