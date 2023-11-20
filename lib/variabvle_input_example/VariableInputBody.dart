import 'package:flutter/material.dart';

class VariableInputBody extends StatelessWidget{
  const VariableInputBody({super.key});

  @override
  Widget build(BuildContext context){
    return const Column(
        children : [
          TestCheckBox(),
          TestRadioButton()
        ]
    );
  }
}

class TestCheckBox extends StatefulWidget{
  const TestCheckBox({super.key});

  @override
  State<TestCheckBox> createState() => _TestCheckBoxState();
}

class _TestCheckBoxState extends State<TestCheckBox>{
  late List<bool> values;

  @override
  void initState(){
    super.initState();
    values = [false, false,false];
  }

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Checkbox(value: values[0], onChanged: (value) => changeValues(0, value: value)),
        Checkbox(value: values[1], onChanged: (value) => changeValues(1, value: value)),
        Checkbox(value: values[2], onChanged: (value) => changeValues(2, value: value))
      ],
    );
  }

  void changeValues(int buttonIndex, {bool? value = false}){
    setState(() {
      values[buttonIndex] = value!;
    });
  }
}

class TestRadioButton extends StatefulWidget{
  const TestRadioButton({super.key});

  @override
  State<TestRadioButton> createState() => _TestRadioButtonState();
}

enum TestRadioValue{
  test1,
  test2,
  test3;
}

class _TestRadioButtonState extends State<TestRadioButton>{
  TestRadioValue? selectValue;

  @override
  void initState(){
    super.initState();

  }

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        ListTile(
           leading: Radio<TestRadioValue>(
               value: TestRadioValue.test1,
               groupValue: selectValue,
               onChanged: (value) => setState(() {
                selectValue = value;
               }
             )
           ),
          title: Text(TestRadioValue.test1.name),
          onTap: () => setState(() {
            if(selectValue != TestRadioValue.test1){
              selectValue = TestRadioValue.test1;
            }
          },
        )),
        Radio<TestRadioValue>(
            value: TestRadioValue.test2,
            groupValue: selectValue, onChanged: (value) => setState(() {
              selectValue = value;
            })
        ),
        Radio<TestRadioValue>(
            value: TestRadioValue.test3,
            groupValue: selectValue,
            onChanged: (value) => setState(() {
              selectValue = value;
            }
          ))
      ],
    );
  }
}
