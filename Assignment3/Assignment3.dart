import 'dart:io';

void main() {
  question2();
  question3_MethodOne();
  question3_MethodTwo();
  question3_MethodThree();
  question6();
  question7();
  question8();
  question9();
  question10();
  question11();
  question12();
}

/**
 * (1) What are different types of operators in dart?
 */
void question1() {

}

/**
 * (2)Cost of one movie ticket is 600 PKR. Write a script to store ticket price in a
    variable & calculate the cost of buying 5 tickets to a movie.
 */
void question2() {
  print("Enter Ticket Price: ");
  var ticketPrice = int.parse(stdin.readLineSync()!);
  var costOfFiveTickets = 5 * ticketPrice;
  print("Total cost of five tickets: $costOfFiveTickets");
}

/**
 * (3) How to get difference of lists in Dart?
    Problem: Consider you have two lists [1,2,3,4,5,6,7] and [3,5,6,7,9,10]. How
    would you get the difference as output? E.g. [1, 2, 4].
 */
void question3_MethodOne() {
  var list1 = [1, 2, 3, 4, 5, 6, 7];
  var list2 = [3, 5, 6, 7, 9, 10];
  var difference = list1.where((element) => !list2.contains(element));
  print("The Difference of List with method one is : $difference");
}

void question3_MethodTwo() {
  var list1 = [1, 2, 3, 4, 5, 6, 7];
  var list2 = [3, 5, 6, 7, 9, 10];
  var diff = [];

  list1.forEach((element) {
    if (!list2.contains(element)) {
      diff.add(element);
    }
  });
  print("The Difference of List with method two is : $diff");
}

void question3_MethodThree() {
  var list1 = [1, 2, 3, 4, 5, 6, 7];
  var list2 = [3, 5, 6, 7, 9, 10];
  var diff = list1.toSet().difference(list2.toSet());

  print("The Difference of List with method two is : $diff");
}

/**
 * (4) What is a difference between these operators “?? And?”
 */
void question4() {

}

/**
 * (5)What are the data types supported in Dart? Explain with Examples.
 */
void question5() {

}

/**
 * (6)Solve:
    a. First declare an array and assign the numbers of the table of 7.
    b. Second declare another array and assign the numbers 1-10
    c. Now write down the table of 7 using map.fromiterables method.
 */
void question6() {
  var tableNum = [1, 2, 3, 4, 5, 6, 7, 8, 9, 20];
  var tableInto = [7, 14, 21, 28, 35, 42, 49, 56, 63, 70];
  var table = Map.fromIterables(tableNum, tableInto);
  var noOfTable = 7;
  table.forEach((key, value) {
    print("$noOfTable X $key = $value");
  });
}

/**
 * (7) Write a program that
    a. Store correct password in a JS variable.
    b. Asks user to enter his/her password
    c. Validate the two passwords:
    d. Check if user has entered password. If not, then give message “Please
    enter your password”
    e. Check if both passwords are same. If they are same, show message
    “Correct! The password you
    f. entered matches the original password”. Show “Incorrect password”
    otherwise.
 */
void question7() {
  var userPassword = "password123";
  print("Please enter your password: ");
  var password = stdin.readLineSync()!;
  if (password.isNotEmpty) {
    (userPassword == password)
        ? print(
        "Correct! The password you entered matches the original password")
        : print("Incorrect password");
  }
  else {
    print("Please enter your password");
  }
}

/**
 * (8) Write a program to store 3 student names in an array. Take another array to
    store score of these three students. Assume that total marks are 500 for each
    student, display the scores & percentages sof students.
 */
void question8() {
  var students = ["Haseeb", "Babar", "Dani"];
  var studentsScore = ["489", "400", "300"];
  var totalMarks = 500;
  var temp = Map.fromIterables(students, studentsScore);
  print("Name of Student \t\t Scores \t\t Percentage");
  temp.forEach((key, value) {
    print("$key \t\t\t\t $value \t\t\t ${ (int.parse(value) / totalMarks) *
        100}%");
  });
}

/**
 * (9) Declare 5 legal & 5 illegal variable names.
 */
void question9() {

}

/**
 * (10) Write a program to replace the “Hyder” to “Islam” in the word
    “Hyderabad” and display the result.
 */
void question10() {
  String city = "Hyderabad";
  print(city.replaceAll("Hyder", "Islam"));
  print(city.replaceRange(0, 5, "Islam"));
}

/**
 *(11) Write a program to generate your K-Electric bill 7. All the amounts should
    be rounded off to 2 decimal places. Display the following fields:
    a. Customer Name
    b. Current Month
    c. Number of units
    d. Charges per unit
    e. Net Amount Payable (within Due Date)
    f. Late Payment Surcharge
    g. Gross Amount Payable (after Due Date)
    Where, Net Amount Payable (within Due Date) = Number of units * Charges per unit
    & Gross Amount Payable (after Due Date) = Net Amount + Late Payment Surcharge
 */
void question11() {
  List<dynamic> consumer = ["M.Haseeb", "March", 312, 15, 50];
  consumer.insert(4, consumer[2] * consumer[3]);
  consumer.insert(6, consumer[4] + consumer[4]);

  print(
      "|                                                   K- Electric Bill For The Month Of March 2022                                                      |");
  print(
      "|-----------------------------------------------------------------------------------------------------------------------------------------------------|");
  print(
      "| Customer Name | Customer Month | No. Of Units | Charges/Unit |    Net Amount Payable (WDD)   |   Late Payment Surcharge  |    Gross Payable (ADD)   |");
  print(
      "|-----------------------------------------------------------------------------------------------------------------------------------------------------|");
  print(
      "|   ${consumer[0]}    |\t${consumer[1]}\t |\t${consumer[2]}\t|\t${consumer[3]}     |\t\t${consumer[4]}\t       |\t\t${consumer[5]}\t   |\t\t${consumer[6]}\t      |");
  print(
      "|-----------------------------------------------------------------------------------------------------------------------------------------------------|");
}

/**
 *(12) Write a program that shows the message “First fifteen days of the month”
    if the date is less than 16th of the month else shows “Last days of the
    month”.
 */
void question12() {
  (DateTime.now().day < 16) ? print("First fifteen days of the month") : print("Last days of the month");
}