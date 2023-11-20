import 'package:flutter/material.dart';

class ExampleCallBackBody extends StatelessWidget{
  const ExampleCallBackBody({super.key});

  @override
  Widget build(BuildContext context){
    return const TestStatefulWidget();
  }
}

class TestStatefulWidget extends StatefulWidget{
  const TestStatefulWidget({super.key});

  @override
  State<TestStatefulWidget> createState() => _TestStatefulWidget();
}

class _TestStatefulWidget extends State<TestStatefulWidget>{
  int counter = 0;

  @override
  Widget build(BuildContext context){
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Count: $counter', style: const TextStyle(fontSize: 30)),
          // CounterButtonWidget(addCounter),
          CounterButtonWidget(addCounterParam),
        ],
    );
  }

  void addCounter(){
    setState(() {
      ++counter;
    });
  }

  void addCounterParam(int addValue){
    setState(() {
      counter = counter + addValue;
    });
  }
}

class CounterButtonWidget extends StatelessWidget{
  const CounterButtonWidget(this.callback, {super.key});

  // final VoidCallback callback;
  final Function(int) callback;

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      child: InkWell(
        onTap: () => callback.call(1),
          onDoubleTap: () => callback.call(5),
          onLongPress: () => callback.call(10),
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: BoxDecoration(border: Border.all()),
              child: Text(
                  'Up counter',
                  style: TextStyle(fontSize: 24)
              ),
            ),
          ),
      ),
    );
  }
}