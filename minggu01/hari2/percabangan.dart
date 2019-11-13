import 'dart:io';

main(List<String> args) {
 stdout.write("Input data :");
 int nilai = int.parse(stdin.readLineSync());

 String grade;
 if(nilai > 90) grade="A";
 else 
 if(nilai > 80) grade="B";
 else 
 if(nilai >=50) grade="C";
 else
 if (nilai<49) grade="D";
 else
 grade="E";
 print("grade : $grade");

}