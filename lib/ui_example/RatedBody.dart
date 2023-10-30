import 'package:flutter/material.dart';

class AnotherRatedBody extends StatelessWidget{
  const AnotherRatedBody({super.key});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children:[
          Container(width: 100, height: 100, color: Colors.red, margin: const EdgeInsets.symmetric(vertical: 8),),
          Container(width: 100, height: 100, color: Colors.blue, margin: const EdgeInsets.symmetric(vertical: 8),),
          Container(width: 100, height: 100, color: Colors.green, margin: const EdgeInsets.symmetric(vertical: 8),),
          Container(width: 100, height: 100, color: Colors.yellow, margin: const EdgeInsets.symmetric(vertical: 8),),
          Container(width: 100, height: 100, color: Colors.indigo, margin: const EdgeInsets.symmetric(vertical: 8),),
          Container(width: 100, height: 100, color: Colors.orange, margin: const EdgeInsets.symmetric(vertical: 8),),
          Container(width: 100, height: 100, color: Colors.grey, margin: const EdgeInsets.symmetric(vertical: 8),),
        ],
      ),
    );
  }
}

class RatedBody extends StatelessWidget {
  const RatedBody({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(width: double.infinity, height: 200, color: Colors.red,),
        Expanded(child: Container(color: Colors.blue, height: 100,)),
        // Flexible(
        //   flex: 1,
        //   child: Container(
        //       color: Colors.red,
        //       child: Text('Container 1'),
        //   ),
        // ),
        Flexible(
          flex: 1,
          child: Container(
              color: Colors.orange,
              height: 100,
          ),
        ),
      ],
    );
  }
}
