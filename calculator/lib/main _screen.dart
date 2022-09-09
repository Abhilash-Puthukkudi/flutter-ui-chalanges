import 'package:calculator/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> buttons = [
      'C',
      'DEL',
      '%',
      '/',
      '9',
      '8',
      '7',
      'x',
      '6',
      '5',
      '4',
      '-',
      '3',
      '2',
      '1',
      '+',
      '0',
      '.',
      'ANS',
      '=',
    ];
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        children: [
          Expanded(child: Container()),
          Expanded(
            flex: 2,
            child: Container(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemCount: buttons.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return MyButtons(
                          buttons[index], Colors.red, Colors.white);
                    } else if (index == 1) {
                      return MyButtons(
                          buttons[index], Colors.green, Colors.white);
                    } else {
                      return MyButtons(
                          buttons[index],
                          isOperator(buttons[index])
                              ? Colors.deepPurple
                              : Colors.deepPurple[50],
                          isOperator(buttons[index])
                              ? Colors.deepPurple[50]
                              : Colors.deepPurple);
                    }
                  }),
            ),
          )
        ],
      ),
    );
  }

  bool isOperator(String text) {
    if (text == 'x' ||
        text == '/' ||
        text == '%' ||
        text == '+' ||
        text == '-' ||
        text == '=') {
      return true;
    }
    return false;
  }
}
