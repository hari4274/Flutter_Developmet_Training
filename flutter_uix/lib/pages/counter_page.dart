import 'package:flutter/material.dart';
import 'package:flutter_uix/blocs/counter_bloc.dart';
// import 'package:flutter_uix/widgets/decrement.dart';
// import 'package:flutter_uix/widgets/increment.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    String val = counterBloc.counter.toString();
    String url = 'https://picsum.photos/300/300?random=' + val;

    return Scaffold(
      appBar: AppBar(
        leading: Text(val, style: TextStyle(fontSize: 30, color: Colors.deepOrangeAccent)),
        title: Container(
          // alignment: Alignment(0.0, 1.0),
          // height: 60,
          // color: Colors.amberAccent,      
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: int.parse(val) + 30,
            itemBuilder: (context, index) {
              return Container(
                // elevation: 4,
                width: 50,
                height: 50,
                child: FlatButton(
                  child: Image.network('https://picsum.photos/30/30?random='+ index.toString()),
                  onPressed: (){
                    counterBloc.counter = index;
                  },
                ),
              );
            },
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(url),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
  
}