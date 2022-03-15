import 'dart:io';

void main() {
  // question1();
  // question2();
  // question3();
  // question4();
  // question5();
  // question6();
  // question7();
  // question8();
  // question9();
  // question10();
  // question11();
  question12();
  // question13();
  // question14();
}

/**
 * 1. How to duplicate repeating items inside a Dart list?
    Problem
    Consider the code:
    final List<Dynamic> _nameList = [Bilal, Bilal, Bilal, Owais, Owais,
    Owais]
    What can to be done in order to not repeat Bilal and Owais multiple
    times?
 */
void question1() {
  final List<dynamic> _nameList = [
    "Bilal",
    "Bilal",
    "Bilal",
    "Owais",
    "Owais",
    "Owais"
  ];
  print(_nameList.toSet());
}

/**
 * 2. Let’s say you are given a list saved in a variable:
Consider a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
Write a code that takes this list and makes a new list that has only the
even elements of this list in it.
 */
void question2() {
  var a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  print(a.where((element) => element % 2 == 0));
}

/**
 * Ask the user for a number and determine whether the number is
prime or not.
 */
void question3() {
  var num = int.parse(stdin.readLineSync()!);
  for (var i = 2; i <= (num / 2); i++) {
    if (num % i == 0) {
      print("Is Not Prime");
      return;
    }
  }
  print("Is Prime");
}

/**
 * 4. Write a program to print multiplication table of 7 length 15 using
loop.
 */
void question4() {
  for (var i = 1; i <= 15; i++) {
    print("7 x $i = ${7 * i}");
  }
}

/**
 * 5. Write a program to print items of the following array using for loop:
fruits = [“apple”, “banana”, “mango”, “orange”, “strawberry”].
 */
void question5() {
  var fruits = ["apple", "banana", "mango", "orange", "strawberry"];
  for (var item in fruits) {
    print("$item ");
  }
}

/**
 * 6. Write a program to print multiples of 5 ranging 1 to 100.
 */
void question6() {
  for (var i = 1; i <= 100; i++) {
    if (i % 5 == 0) print(i);
  }
}

/**
 * 7. The Temperature Converter: It’s hot out! Let’s make a converter
based on the steps here.
a. Store a Celsius temperature into a variable.
b. Convert it to Fahrenheit & output “NNoC is NNoF”.
c. Now store a Fahrenheit temperature into a variable.
d. Convert it to Celsius & output “NNoF is NNoC”.
 */
void question7() {
  var tempInCelcius = 30;
  var tempInFarenheit = 86;
  var convertToFarenheit = (tempInCelcius * 1.8) + 32;
  var convertToCelcius = (tempInFarenheit - 32) * 0.5556;

  print("$convertToFarenheit°F");
  print("${convertToCelcius.toStringAsFixed(0)}°C");
}

/**
 * 8. Write a program to create a calculator for +, -, *, / & % using if
statements. Take the following input:
a. First number Second number
b. Operation (+, -, *, /, %)

Compute & show the calculated result to user.
 */
void question8() {
  print("Enter Num 1");
  var num1 = int.parse(stdin.readLineSync()!);
  print("Enter Num 2");
  var num2 = int.parse(stdin.readLineSync()!);
  print("Enter Operation To Perform on Numbers");
  var operation = stdin.readLineSync()!;
  if (operation == "+") {
    print("$num1 + $num2  = ${num1 + num2}");
  }
  if (operation == "-") {
    print("$num1 - $num2  = ${num1 - num2}");
  }
  if (operation == "*") {
    print("$num1 * $num2  = ${num1 * num2}");
  }
  if (operation == "/") {
    print("$num1 / $num2  = ${num1 / num2}");
  }
  if (operation == "%") {
    print("$num1 % $num2  = ${num1 % num2}");
  }
}

/**
 * 9. Write a program that takes a character (I. e. string of length 1) and
returns true if it is a vowel, false otherwise.
 */
void question9() {
  print("Enter Character");
  var vowels = ["A", "E", "I", "O", "U"];
  var character = stdin.readLineSync()!;
  (vowels.contains(character.toUpperCase())) ? print("true") : print("false");
}

/**
 * 10. Write a program to reverse a string. For example, if my string is
"natsikaP nawaJ" then my result will be "Jawan Pakistan".
 */
void question10() {
  var str = "natsikaP nawaJ";
  var revStr = "";
  for (var i = str.length - 1; i >= 0; i--) {
    revStr += str[i];
  }
  print("$revStr");
}

/**
 * 11. How are duplicates removed from a given array? [Ahmed, Bilal,
Muhammad, Owais, Muhmmad, Ali, Ahmed]
 */
void question11() {
  var names = [
    "Ahmed",
    "Bilal",
    "Muhammad",
    "Owais",
    "Muhammad",
    "Ali",
    "Ahmed"
  ];
  print(names.toSet());
}

/**
 * 12. Find the missing number in array of 1 to 100?
 */
void question12() {
  var nums = [];
  for (var i = 1; i <= 100; i++) {
    if (i == 10) continue;
    nums.add(i);
  }
  print(nums);
  for (var j = 1; j <= 100; j++) {
    if (!nums.contains(j)) {
      print("$j is missing ");
    }
  }
}

/**
 * 13. Find the largest and smallest number in an unsorted integer
array?
 */
void question13() {
  var arr = [1, 2, 3, 4, 5, 34, 7, 87, 23, 6, 9];
  arr.sort();
  print("Smallest: ${arr.first}");
  print("Largest: ${arr.last}");
}

/**
 * 14. Find all pairs of an integer array whose sum is equal to a given
number?
 */
void question14() {
  var sum = 3;
  var nums = [-1, 2, 5, 7, -2, 6, 8, 9, 4, 1];
  List<String> pairs = [];
  for (var i = 0; i < nums.length; i++) {
    for (var j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == sum) {
        pairs.add("{${nums[i]},${nums[j]}}");
      }
    }
  }
  (pairs.isEmpty) ? print("No Pairs Found") : print(pairs);
}
