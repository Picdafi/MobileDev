void main(List<String> args) {
  int c = 2;
  int d = 4;
  String a ="Hai";
  String b ="Ya";

  bool operandAnd = a == b && d < 5;
  bool operandOr = a == b || c < d;
  bool operatorNot = !operandAnd;

  print("contoh operand And : ");
  print(operandAnd);
  print("contoh operand Or : ");
  print(operandOr); 
  print("contoh operand Not : ");
  print(operatorNot);
}

//&&  jika keduanya bernilai benar
// || or jika salah satu bernilai atau semua bernilai true
// ! not mengembalikan nilai kebalikan