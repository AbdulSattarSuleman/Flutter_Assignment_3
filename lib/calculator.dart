// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_assignment_3/style.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();
  TextEditingController signController = TextEditingController();
  int? firstNumber = 0;
  int? secondNumber = 0;
  double? result;
  String? sign;
  String? character;
  String? operationName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              controller: firstNumberController,
              decoration: InputDecoration(
                hintText: 'Enter First Number',
                labelText: 'Enter First Number',
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              controller: secondNumberController,
              decoration: InputDecoration(
                hintText: 'Enter Second Number',
                labelText: 'Enter Second Number',
              ),
            ),
            TextField(
              maxLength: 1,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.none,
              controller: signController,
              decoration: InputDecoration(
                hintText: 'Enter Sign Operation',
                labelText: 'Enter Sign Operation',
              ),
            ),
            SizedBox(
              height: 19,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    firstNumber = int.parse(firstNumberController.text);
                    secondNumber = int.parse(secondNumberController.text);
                    sign = (signController.text);

                    if (sign == '+') {
                      result = (firstNumber! + secondNumber!).toDouble();
                      operationName = 'Addition';
                    } else if (sign == '-') {
                      result = (firstNumber! - secondNumber!).toDouble();
                      operationName = 'Subtraction';
                    } else if (sign == '*') {
                      result = (firstNumber! * secondNumber!).toDouble();
                      operationName = 'Multiplication';
                    } else if (sign == '/') {
                      result = (firstNumber! / secondNumber!).toDouble();
                      operationName = 'Division';
                    } else if (sign == '%') {
                      result = (firstNumber! % secondNumber!).toDouble();
                      operationName = 'Modulus';
                    } else {
                      operationName = 'Not Valid';
                      print('Enter Correct Sign');
                    }
                  });
                },
                child: Text('Calculate')),
            SizedBox(
              height: 19,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'First Number \t',
                  style: myTextStyle,
                ),
                Text(
                  firstNumber.toString(),
                  style: myNumber,
                ),
              ],
            ),
            SizedBox(
              height: 19,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Second Number \t',
                  style: myTextStyle,
                ),
                Text(
                  secondNumber.toString(),
                  style: myNumber,
                ),
              ],
            ),
            SizedBox(
              height: 19,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Operation $operationName \t',
                  style: myTextStyle,
                ),
                Text(
                  sign.toString(),
                  style: myNumber,
                ),
              ],
            ),
            SizedBox(
              height: 19,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Result : \t',
                  style: myTextStyle,
                ),
                Text(
                  result.toString(),
                  style: myNumber,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
