import 'package:flutter/material.dart';
import 'package:fluttering/main.dart';

class recover extends StatelessWidget {
  const recover({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Recovery of HAB'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Center(
            child: Image(
              image: AssetImage('assests/recover 1.png'),
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
