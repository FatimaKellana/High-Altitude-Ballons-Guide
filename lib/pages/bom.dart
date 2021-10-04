import 'package:flutter/material.dart';
import 'package:fluttering/main.dart';

class BOM extends StatelessWidget {
  const BOM({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Bill Of Materials (BOM)'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Center(
            child: Image(
              image: AssetImage('assests/BOM.png'),
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
