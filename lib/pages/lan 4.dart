import 'package:flutter/material.dart';
import 'package:fluttering/pages/lan5.dart';

class lan4 extends StatelessWidget {
  const lan4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Launching a HAB'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Center(
            child: Image(
              image: AssetImage('assests/path 4.png'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => lan5(),
            ),
          );
        },
        tooltip: 'Transfer',
        child: const Icon(Icons.arrow_right_outlined),
      ));
}
