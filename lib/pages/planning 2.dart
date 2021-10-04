import 'package:flutter/material.dart';
import 'package:fluttering/main.dart';

class plan2 extends StatelessWidget {
  const plan2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Planning & Prepration'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Center(
            child: Image(
              image: AssetImage('assests/4.png'),
            ),
          ),
        ],
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Lessons(),
            ),
          );
        },
        child: Text('Back to Lessons'),
      ));
}
