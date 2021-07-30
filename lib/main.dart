import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;
  bool _light = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  ThemeData _darkTheme = ThemeData(
    accentColor: Colors.cyan.shade500,
    brightness: Brightness.dark,
    // primaryColor: Colors.cyan.shade300,
    // col
  );

  ThemeData _lightTheme = ThemeData(
      accentColor: Colors.blue.shade500,
      brightness: Brightness.light,
      primaryColor: Colors.blue.shade500);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _light ? _darkTheme : _lightTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter',
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
            child: Row(
          children: <Widget>[
            Text('Dark Theme'),
            Switch(
                value: _light,
                onChanged: (state) {
                  setState(() {
                    _light = state;
                  });
                }),
          ],
        )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Counter',
                style: kHeadTextStyle,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                '$_counter',
                // style: Theme.of(context).textTheme.headline4,
                style: kValueTextStyle,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Press the Button to Add Value',
                style: kContextStyle,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _incrementCounter,
        ),
      ),
    );
  }
}
