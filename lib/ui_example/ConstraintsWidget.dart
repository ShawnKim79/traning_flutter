import 'package:flutter/material.dart';

class ConstraintsWidget extends StatelessWidget{
  const ConstraintsWidget({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: 500,
      width: 500,
      color: Colors.blue,
      child: Center(
        child: Container(
          constraints: BoxConstraints.tight(Size(200,200)),
          color: Colors.red,
          child: Container(
            margin: const EdgeInsets.all(20),
            width: 50,
            height: 50,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}