import 'dart:io';

main(List<String> args) {
 stdout.write("Input data :");
 int nilai = int.parse(stdin.readLineSync());

 String grade;
 if(nilai >= 90) grade="A";
 else if(nilai >=80) grade="B";
 else grade="C";
 print("grade : $grade");

}