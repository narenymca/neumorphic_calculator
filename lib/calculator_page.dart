import 'package:compass/calculator_brain.dart';
import 'package:compass/constants.dart';
import 'package:compass/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CalculatorPage extends StatefulWidget {
  CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String result = '0';
  CalculatorBrain calc = CalculatorBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEBEC),
      body: SafeArea(

        child: Padding(
          
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 300,
                        maxHeight: 70,
                      ),
                      child: Text(
                        result,
                        style: kResultTextStyle,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )),
              SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 30),
                  child: Text(
                    calc.resultOperationText,
                    style: kOperationTextStyle,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundedButton(
                      buttonText: 'AC',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('AC')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                    ),
                    RoundedButton(
                      buttonText: '+/-',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('+/-')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                    ),
                    RoundedButton(
                      buttonText: '%',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('%')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                    ),
                    RoundedButton(
                      buttonText: '÷',
                      colorText: kOrangeColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('÷')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundedButton(
                      buttonText: '7',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('7')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                    ),
                    RoundedButton(
                      buttonText: '8',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('8')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                    ),
                    RoundedButton(
                      buttonText: '9',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('9')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                    ),
                    RoundedButton(
                      buttonText: 'x',
                      colorText: kOrangeColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('x')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundedButton(
                      buttonText: '4',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('4')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                    ),
                    RoundedButton(
                      buttonText: '5',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('5')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                    ),
                    RoundedButton(
                      buttonText: '6',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('6')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                    ),
                    RoundedButton(
                      buttonText: '-',
                      colorText: kOrangeColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('-')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundedButton(
                      buttonText: '1',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('1')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                    ),
                    RoundedButton(
                      buttonText: '2',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('2')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                    ),
                    RoundedButton(
                      buttonText: '3',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('3')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                    ),
                    RoundedButton(
                      buttonText: '+',
                      colorText: kOrangeColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('+')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RoundedButton(
                      buttonText: '0',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('0')!;
                        });
                      },
                      buttonBoxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(40)),
                      buttonWidth: 3,
                    ),
                    RoundedButton(
                      buttonText: '.',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('.')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                    ),
                    RoundedButton(
                      buttonText: '=',
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed('=')!;
                        });
                      },
                      buttonBoxShape: const NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
