void main() {
  initSubjectMarks();
}

void initSubjectMarks() {
  var maths = 20;
  var eng = 30;
  var chem = 40;
  var physics = 55;
  var urdu = 64;
  var science = 75;
  var computer = 99;

  calculateTotalOfSubjects(maths, eng, chem, physics, urdu, science, computer);
}

void calculateTotalOfSubjects(var maths, var eng, var chem, var physics,
    var urdu, var science, var computer) {
  var totalMarks = 700;
  var totalObtained = maths + eng + chem + physics + urdu + science + computer;

  var percentage = (totalObtained / totalMarks) * 100;
  print("|--------------------------- Marksheet ----------------------------|");
  print("| Subjects | Total Marks | Marks Objects | Percentage |    Grade   |");
  print(
      "| Maths    |     100     |     $maths        |            |      ${studentGrade(maths)}     | ");
  print(
      "| English  |     100     |     $eng        |            |      ${studentGrade(eng)}     | ");
  print(
      "| Chemistry|     100     |     $chem        |            |      ${studentGrade(chem)}     | ");
  print(
      "| Physics  |     100     |     $physics        |            |      ${studentGrade(physics)}     | ");
  print(
      "| Urdu     |     100     |     $urdu        |            |      ${studentGrade(urdu)}     | ");
  print(
      "| Science  |     100     |     $science        |            |      ${studentGrade(science)}    | ");
  print(
      "| Computer |     100     |     $computer        |            |      ${studentGrade(computer)}    | ");
  print("|__________________________________________________________________|");
  print(
      "| Total\t   |   \t $totalMarks \t\t   $totalObtained \t\t     ${percentage.toStringAsFixed(2)}%                |");
  print("|__________________________________________________________________|");
}

String studentGrade(num marksObtained) {
  if (marksObtained < 30) {
    return "C";
  } else if (marksObtained > 30 && marksObtained <= 45) {
    return "B";
  } else if (marksObtained > 45 && marksObtained <= 65) {
    return "A";
  } else if (marksObtained > 65) {
    return "A+";
  } else
    return "F";
}
