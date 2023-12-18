import 'package:bmi_calc/input_page.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';

const resultColor = Colors.black;

class Result extends StatelessWidget {
  Result(@required this.bmiResult, this.desc, this.resultText);

  final String bmiResult;
  final String resultText;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 500.0,
              width: 400.0,
              color: color1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      'RESULT TIME!',
                      style: TextStyle(color: Colors.purple, fontSize: 20.0),
                    ),
                  ),
                  Text(
                    resultText,
                    style: TextStyle(
                        color: resultColor,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    bmiResult,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              string: 'Re-Calculate',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
