import 'package:flutter/material.dart';
import 'ui_example/ConstraintsWidget.dart';
import 'state_example/StatelessAndState.dart';
import 'variabvle_input_example/VariableInputBody.dart';
import 'state_example/ExampleCallback.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
          title: Text('여러가지 위젯 디자인')
      ),
      // body: CustomContainer(),
      body: ExampleCallBackBody(),
    ),
  ));
}

