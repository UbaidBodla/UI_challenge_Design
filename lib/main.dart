import 'package:flutter/material.dart';

import 'components.dart';
import 'second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Get \nthe Fastest\nDelivery',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
            Text(
              'Order Food and get\n Delivery in Fastest time in Town',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            ),
            Rounded_Button(
              title: 'Get Started',
              color: Colors.deepOrangeAccent,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Secondpage()));
              },
            ),
            Image.asset('images/delievery.png'),
          ],
        ),
      ),
    );
  }
}
