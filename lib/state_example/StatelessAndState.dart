import 'package:flutter/material.dart';

class StateAndStatelessBody extends StatelessWidget{
  const StateAndStatelessBody({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      children : [
        ExampleStateless(),
        ExampleStateful(index: 3),
      ]
    );
  }
}

class ExampleStateless extends StatelessWidget{
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context){
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class ExampleStateful extends StatefulWidget{
  final int index;
  const ExampleStateful({required this.index, super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful>{
  // 변수들은 상태객체 안에 넣어야.
  late int _index;
  late TextEditingController textEditingController;

  @override
  void initState(){
    super.initState();
    // index = 0;
    _index = widget.index;
  }


  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: (){
          setState(() {
            if (_index == 5){
              _index = 0;
              return;
            }
            _index++;
          });

        },
        child: Container(
          color: Colors.blue.withOpacity(_index/5),
          child: Center(
            child: Text('$_index'),
          )
        ),
      ),
    );
  }
}