//calculator task 3
import 'dart:async';
import 'dart:io';
class Calculator {
  //add
  double addition(double a, double b){ 
    return a + b;
  }
  //subtract
  double subtraction(double a, double b){
    return a - b;
  }
  //multiply
  double multiplication(double a, double b){
    return a * b;
  }
  //divide
  double division(double a, double b) {
    return a / b;
  }
}

void main() {
  Calculator calc = Calculator();

  print('Enter two numbers:');
  double num1 = double.parse(stdin.readLineSync());
  double num2 = double.parse(stdin.readLineSync());

  try {
    double sum = calc.addition(num1, num2);
    double difference = calc.subtraction(num1, num2);
    double product = calc.multiplication(num1, num2);
    double quotient = calc.division(num1, num2);
//delay
    Future.delayed(Duration(seconds: 5), () {
      print('The sum is: $sum');
      print('The difference is: $difference');
      print('The product is: $product');
      print('The quotient is: $quotient');
    });
  } catch (e) {//catch error(div by 0)
    print('Error: $e');
  }
}
