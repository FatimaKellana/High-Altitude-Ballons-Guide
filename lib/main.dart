import 'package:flutter/material.dart';
import 'package:fluttering/pages/Launching.dart';
import 'package:fluttering/pages/faq.dart';
import 'package:fluttering/pages/bom.dart';
import 'package:fluttering/pages/planning.dart';
import 'package:fluttering/pages/Tracking.dart';
import 'package:fluttering/pages/Recovery.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Let it HAB Guide',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('High Altitude Balloons Guide'),
        backgroundColor: Colors.red,
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Ready for making your own HAB',
            style: const TextStyle(fontSize: 27, color: Colors.red),
          ),
          const Text(
            'What do you want to learn about?',
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Lessons(),
                ),
              );
            },
            child: Text('Start your lessons'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BOM(),
                ),
              );
            },
            child: Text('Bill Of Materials (BOM)'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => FAQ(),
                ),
              );
            },
            child: Text('Frequently Asked Questions(FAQ)'),
          )
        ],
      )),
    );
  }
}

class Lessons extends StatelessWidget {
  const Lessons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Start your lessons'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Pick a Lesson',
            style: const TextStyle(fontSize: 35, color: Colors.black),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => plan(),
                ),
              );
            },
            child: Text('Planning & Prepration'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Launch(),
                ),
              );
            },
            child: Text('Launching a HAB'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => track(),
                ),
              );
            },
            child: Text('Tracking of HAB'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => recover(),
                ),
              );
            },
            child: Text('Recovery of HAB'),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => FirstPage(),
            ),
          );
        },
        tooltip: 'Transfer',
        child: const Icon(Icons.home),
      ));
}
