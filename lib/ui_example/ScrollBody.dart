import 'package:flutter/material.dart';

class ScrollBody extends StatelessWidget {
  const ScrollBody({super.key});

  static const double ContainerWidth = 100;
  static const double ContainerHeighht = 80;
  static const ContainerColor = Colors.deepPurpleAccent;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Text('Container 1'),
              margin: EdgeInsets.symmetric(horizontal: 8)
          ),
          Container(
              width: 100,
              height: 100,
              color: Colors.orange,
              child: Text('Container 1'),
              margin: EdgeInsets.symmetric(horizontal: 8)
          ),
          Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
              child: Text('Container 1'),
              margin: EdgeInsets.symmetric(horizontal: 8)
          ),
          Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Text('Container 1'),
              margin: EdgeInsets.symmetric(horizontal: 8)
          ),
          Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Text('Container 1'),
              margin: EdgeInsets.symmetric(horizontal: 8)
          ),
          Container(
              width: 100,
              height: 100,
              color: Colors.indigo,
              child: Text('Container 1'),
              margin: EdgeInsets.symmetric(horizontal: 8)
          ),
          Container(
              width: 100,
              height: 100,
              color: Colors.purple,
              child: Text('Container 1'),
              margin: EdgeInsets.symmetric(horizontal: 8)
          ),
        ],
      ),
    );
  }
}
