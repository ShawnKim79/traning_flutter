import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
          title: Text('여러가지 위젯 디자인')
      ),
      // body: CustomContainer(),
      body: ConstraintsWidget(),
    ),
  ));
}

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

class MixBody extends StatelessWidget {
  const MixBody({super.key});

  static const double ContainerWidth = 100;
  static const double ContainerHeighht = 80;
  static const ContainerColor = Colors.deepPurpleAccent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
        CustomContainer()
      ],

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

