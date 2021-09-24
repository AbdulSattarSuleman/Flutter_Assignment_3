import 'dart:math';
import 'dart:io';

import 'package:flutter_assignment_3/calculator.dart';

void main() {
  /* Question 1*/
/*How to duplicate repeating items inside a Dart list?
Problem
Consider the code:
final List<Ball> _ballList = [Ball (), Ball (), Ball (), Ball (), Ball (),]
What can to be done in order to not repeat Ball () multiple times? 
*/

/* Answer 1*/

  // First Possibility Use Set, Set is same like list but it gives the functionality to ignore the same value or same element.
  // Example Of Set
  Set myBall = Set();
  myBall.addAll(['Ball()', 'Ball()', 'Ball()', 'Ball()']);
  print(myBall);

  // Second Possibility
  // Using List
  final List<String> _ballList = [
    'Ball ()',
    'Ball ()',
    'Ball ()',
    'Ball ()',
    'Ball ()'
  ];
  final uniqueElement = _ballList.toSet().toList();
  print(uniqueElement);

  /* Question 2 */
/*2. How to get difference of lists in Flutter/Dart?
Problem
Consider you have two lists [1,2,3,4,5,6,7] and [3,5,6,7,9,10]. How
would you get the difference as output? eg. [1, 2, 4 ]
*/
  // List<int> firstList = [1, 2, 3, 4, 5, 6, 7];
  // List<int> secondList = [1, 2, 4];

  /* Question 3 */
/* Let’s say you are given a list saved in a variable:
Consider a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
Write a code that takes this list and makes a new list that has only the
even elements of this list in it. 
*/

  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  a.forEach((element) => filterNumbers(element));
  //FUnction Implementaion Out of the Main Fnction

/* Question 4 */
// 4. Ask the user for a number and determine whether the number is
// prime or not.s

  var testPrime = TestPrime();
  testPrime.testPrime(1136); // 1136 is not prime.
  //  pass any number to test whether it's prime or not
  // Function Define in Out of Main Function

/* Question 5 */
// 5. Write a program to print multiplication table of 7 length 15.

  var tableNumber = 7;
  for (var i = 1; i <= 15; i++) {
    print('$tableNumber X $i = ${tableNumber * i}');
  }

/* Question 6 */
// 6. Write a program to print items of the following array using for loop:
// fruits = [“apple”, “banana”, “mango”, “orange” , “strawberry”]

  List<String> fruits = ['apple', 'banana', 'mango', 'orange', 'strawberry'];

  for (var i in fruits) {
    print(i);
  }

/* Question 7 */
// 7. Write a program to print multiples of 5 ranging 1 to 100

  for (var i = 0; i <= 100; i = i + 5) {
    print(i);
  }

/* Question 8 */
/*
8. The Temperature Converter: It’s hot out! Let’s make a converter
based on the steps here.
a. Store a Celsius temperature into a variable.
b. Convert it to Fahrenheit & output “NNoC is NNoF”.
c. Now store a Fahrenheit temperature into a variable.
d. Convert it to Celsius & output “NNoF is NNoC”.
*/
  print('Temperature Convertor');
  double celciusTemperature = -10;
  print('Celcius Temperature $celciusTemperature');
  double fahrenheitTemperature = (celciusTemperature * 1.8) + 32;
  print(
      'Converted into Fahrenheit Temperture NNoC is NNoF => $fahrenheitTemperature');
  fahrenheitTemperature = 50;
  print('Fahrenheit Temperature $fahrenheitTemperature');
  celciusTemperature = (fahrenheitTemperature - 32) * .5556;
  print(
      'Converted into Celcius Temperture NNoF is NNoC =>  $celciusTemperature');

/* Question 9 */

/* 9. Write a program to create a calculator for +, -, *, / & % using if
statements. Take the following input:
a. First number Second number
b. Operation (+, -, *, /, %) 
*/

// Please See Calculator.dart
// trying to integrate dart with flutter

/* Question 10 */
/* 10. Write a program that takes a character (I. e. string of length 1)
and returns true if it is a vowel, false otherwise. 
*/

// Please See Vowels.dart
}

class TestPrime {
  int startingPoint = 1;
  int endPoint = 0;
  int factors = 0;
  void testPrime(int testPrime) {
    endPoint = testPrime;
    for (startingPoint; startingPoint <= sqrt(endPoint); startingPoint++) {
      if (endPoint % startingPoint == 0) {
        factors++;
      }
    }
    if (factors <= 2) {
      print('$endPoint is prime.');
    } else {
      print('$endPoint is not prime.');
    }
  }
}

void filterNumbers(var element) {
  if ((element % 2) == 0) {
    var x = element;
    print(x);
  }
}
