import 'package:flutter/material.dart';
import 'package:fluttering/pages/track2.dart';

class track extends StatelessWidget {
  const track({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Tracking of HAB'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Center(
            child: Image(
              image: AssetImage('assests/track 1.png'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => track2(),
            ),
          );
        },
        tooltip: 'Transfer',
        child: const Icon(Icons.arrow_right_outlined),
      ));
}
