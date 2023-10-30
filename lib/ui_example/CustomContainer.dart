import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  static const BorderColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 50,
        // color: Colors.green.shade200,
        padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
        decoration: BoxDecoration(
            color: Colors.green.shade200,
            border: Border.all(
                color: BorderColor, width: 5, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.3),
                  offset: Offset(6, 6),
                  blurRadius: 10,
                  spreadRadius: 10),
              BoxShadow(color: Colors.blue.withOpacity(0.3),
                  offset: Offset(-6, -6),
                  blurRadius: 10,
                  spreadRadius: 10)
            ]
        ),
        child: Center(child: Container(
            color: Colors.yellow,
            child: Text('Hello Container'))),
      ),
    );
  }
}


class ColumnBody extends StatelessWidget {
  const ColumnBody({super.key});

  static const double ContainerWidth = 100;
  static const double ContainerHeighht = 100;
  static const ContainerColor = Colors.deepPurpleAccent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: ContainerWidth,
              height: ContainerHeighht,
              color: ContainerColor,
              child: Text('Container 1')
          ),
          Container(
              width: ContainerWidth,
              height: ContainerHeighht,
              color: ContainerColor,
              child: Text('Container 2')
          ),
          CustomContainer(),
        ],
      ),
    );
  }
}


class RowBody extends StatelessWidget {
  const RowBody({super.key});

  static const double ContainerWidth = 100;
  static const double ContainerHeighht = 100;
  static const ContainerColor = Colors.deepPurpleAccent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      color: Colors.grey,
      child: Row(
        children: [
          Container(
              width: ContainerWidth,
              height: ContainerHeighht,
              color: ContainerColor,
              child: Text('Container 1')
          ),
          Container(
              width: ContainerWidth,
              height: ContainerHeighht,
              color: ContainerColor,
              child: Text('Container 2')
          ),
          CustomContainer(),
        ],
      ),
    );
  }
}

