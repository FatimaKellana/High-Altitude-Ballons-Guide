import 'package:flutter/material.dart';
import 'package:fluttering/main.dart';

class FAQ extends StatelessWidget {
  const FAQ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Frequently Asked Question (FAQ)'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Center(
            child: Image(
              image: AssetImage('assests/FAQ 1.png'),
            ),
          ),
        ],
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => FirstPage(),
            ),
          );
        },
        child: Text('Back to Lessons'),
      ));
}
