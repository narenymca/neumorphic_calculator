import 'dart:ffi';

class CalculatorBrain {
  String outPut = '0'; //printed result to user
  String _outPut = ''; //calculation result
  dynamic num1 = 0; // output result when arithematic operator is pressed
  dynamic num2 = 0;
  String operator = ''; // stores the operator
  String resultOperationText = ''; // operation result below output text
  bool isPressedPercentageButton = true;

  String? buttonPressed(String buttonText) {
    if (buttonText == 'AC') {
      _outPut = '';
      num1 = 0;
      num2 = 0;
      operator = '';
      outPut = '0';
      resultOperationText = '';
      isPressedPercentageButton = true;

      return outPut;
    } else if (buttonText == '+/-') {
      isPressedPercentageButton = true;

      if (_outPut.contains('-', 0)) {
        print('Already a minus before the number');
        _outPut = _outPut + '';
        outPut = _outPut;
        resultOperationText = outPut;
      } else {
        _outPut = '-' + _outPut;
        outPut = _outPut;
        resultOperationText = outPut;
      }

      return outPut;
    } else if (buttonText == '%') {
      if (isPressedPercentageButton) {
        if (outPut.contains('.')) {
          num1 = double.parse(outPut);
        } else {
          num1 = int.parse(outPut);
        }
        _outPut = (num1 / 100).toString();
        outPut = _outPut;
        _outPut = '';
        num1 = 0;
        resultOperationText = outPut;

        return outPut;
      }
    } else if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == 'x' ||
        buttonText == '÷') {
      if (outPut.contains('.')) {
        num1 = double.parse(outPut);
      } else {
        num1 = int.parse(outPut);
      }
      operator = buttonText;
      resultOperationText = operator;
      isPressedPercentageButton = false;
      print(operator);
      _outPut = '';
    } else if (buttonText == '.') {
      if (outPut.contains('.')) {
        print('already contains decimal');
        _outPut = _outPut + '';
        outPut = _outPut;
        resultOperationText = outPut;
      } else {
        _outPut = _outPut + buttonText;
        outPut = _outPut;
        resultOperationText = outPut;
      }
    } else if (buttonText == '=') {
      isPressedPercentageButton = true;
      if (outPut.contains('.')) {
        num2 = double.parse(outPut);
      } else {
        num2 = int.parse(outPut);
      }
      if (operator == '+') {
        _outPut = (num1 + num2).toString();
      }
      if (operator == '-') {
        _outPut = (num1 - num2).toString();
      }
      if (operator == 'x') {
        _outPut = (num1 * num2).toString();
      }
      if (operator == '÷') {
        _outPut = (num1 / num2).toString();
      }
      num1 = 0;
      num2 = 0;
      operator = '';
      if (_outPut.contains('.')) {
        outPut = double.parse(_outPut).toStringAsFixed(2);
      } else {
        outPut = _outPut;
      }
      resultOperationText = '';
      _outPut = '';
    } else {
      _outPut = _outPut + buttonText;
      outPut = _outPut;
      resultOperationText = resultOperationText + buttonText;
    }
    print(_outPut);
    return outPut;
  }
}
