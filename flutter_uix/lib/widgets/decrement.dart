import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_uix/blocs/counter_bloc.dart';

class DecrementButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    
    return FlatButton.icon(
      icon: Icon(Icons.remove),
      label: Text("Remove"),
      color: Colors.blueAccent,
      onPressed: (){
        counterBloc.decrement();
      },
    );
  }
  
}