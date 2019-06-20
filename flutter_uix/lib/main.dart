import 'package:flutter/material.dart';
import 'package:flutter_uix/blocs/counter_bloc.dart';
import 'package:flutter_uix/pages/counter_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterBloc>.value(
          value: CounterBloc(),
        ),
      ],
      child: MaterialApp(
        home: CounterPage(),
      ),
    );
  }
  
}