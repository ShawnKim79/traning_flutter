import 'package:flutter/material.dart';

class StackLayerBody extends StatelessWidget{
  const StackLayerBody({super.key});

  @override
  Widget build(BuildContext context){
    return Stack(
      children: [
        Container(width: 500, height: 500, color: Colors.black,),
        Container(width: 400, height: 400, color: Colors.red,),
        Align(
            alignment: Alignment(0.5, 0.5),
            child: Container(width: 300, height: 300, color: Colors.yellow,)),
        Align(
            alignment: Alignment.bottomRight,
            child: Container(width: 200, height: 200, color: Colors.green,)),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),

          ),
        ),
        Container(
          width: 80,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(5),

          ),
        ),
        Positioned(
            top: 10,
            left: 10,
            child: Text('Count 0', style: TextStyle(color: Colors.red, fontSize: 15),)),
      ],
    );
  }
}