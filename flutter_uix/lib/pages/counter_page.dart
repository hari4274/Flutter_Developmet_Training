import 'package:flutter/material.dart';
import 'package:flutter_uix/blocs/counter_bloc.dart';
import 'package:flutter_uix/widgets/decrement.dart';
import 'package:flutter_uix/widgets/increment.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    String val = counterBloc.counter.toString();
    String url = 'https://picsum.photos/300/300?random=' + val;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(url),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(val, style: TextStyle(fontSize: 62.2, color: Colors.deepOrangeAccent)),
                IncrementButton(),
                DecrementButton(),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
  
}