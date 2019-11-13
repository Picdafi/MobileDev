import 'dart:async';

void main(List<String> args) async {
  var x = await four();
  print(x);
}

Future<int> four() async{
  return 4;
}